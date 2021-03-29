from django.shortcuts import redirect, render
from achat.models.modele_model import ModelePhone
from achat.models.marque_model import Marque
from achat.models.price_phone_model import PricePhone
from achat.models.color_phone_model import ColorPhone
from achat.models.panier_model import Panier
from django.contrib.auth.models import User

from achat.models.client_model import Client
from django.contrib.auth import authenticate, login,logout
from django.contrib.auth.decorators import login_required
from django.db.models.functions import Lower
from django.db.models import Count
from django.contrib.auth.password_validation import CommonPasswordValidator

def login_view(request): 
    # create a dictionary to pass
    if (request.POST):
        username = request.POST['email']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            # Redirect to a success page.
            return redirect("/panier")
        else:
            error="Le nom d'utilisateur ou me mot de passe est incorrect"
            # Return an 'invalid login' error message.
            return render(request, "djassa-store/connexion.html",{'error':error}) 
    return render(request, "djassa-store/connexion.html") 

@login_required(login_url='/login')
def logout_view(request):
    logout(request)
    # Redirect to a success page.
    return redirect("/login")

def register_view(request): 
    # create a dictionary to pass 
    # data to the template 
    
    if request.method == "POST":
        
        if request.POST['password'] != request.POST['conf_password']:
            confError = "La confirmation du mot de passe a échoué"
            return render(request, "djassa-store/inscription.html",{'errorConf': confError})

        else:
            try:
                validator = CommonPasswordValidator()
                validator.validate(request.POST['password'])
            except:
                return render(request, "djassa-store/inscription.html",{'errorCommon': "Mot de passe trop commun ou similaire au nom"})
            client = Client()
            user = User()
            user.first_name = request.POST['name']
            user.last_name = request.POST['surname']
            user.username = request.POST['email']
            user.email= request.POST['email']
            user.set_password(request.POST['password'])
            user.save()
            client.user = user
            client.telephone = request.POST['telephone']
            client.save()
            return redirect('/login')
    # return response with template and context 
    return render(request, "djassa-store/inscription.html") 

def total(prix,quantity):
    montant = int(prix.replace(' ',''))
    return montant*quantity

@login_required(login_url='/login')
def panier_view(request):
    panier = list(Panier.objects.filter(id_users=request.user))
    count=len(panier)
    print(panier)
    TOTAL =0
    type = Panier.objects.all().values('type').annotate(total=Count('type'))
    print(type)
    ALL =[]
    
    en_cours= len(Panier.objects.filter(id_users=request.user).filter(status=True))
    for elt in panier:
        prix = int(elt.total.replace(' ',''))
        price = PricePhone.objects.get(id=elt.id_price_phone.id)
        color = ColorPhone.objects.get(pk=price.id_color.id)
        modele = ModelePhone.objects.get(pk=color.id_modele.id)
        total = prix*int(elt.quantite)
        ALL.append({
            'id':elt.id,
            'photo': color.image,
            'couleur':color.couleur,
            'modele': modele.name,
            'capacite':price.capacite,
            'prix':price.prix,
            'total':total,
            'pchiffre':prix,
            'quantite':elt.quantite,
            'type':elt.type,
            'status':elt.status

        })
        TOTAL= TOTAL + total
    if request.POST:
        paniers = Panier.objects.get(pk=request.POST['panier'])
        print(paniers.status)
        if paniers.status==False:
            paniers.status=True
        else:
            paniers.status=False
        print(paniers.status)
        paniers.quantite = request.POST['quant']
        paniers.save()
        return redirect('/panier')
    print(TOTAL)
    

    return render(request, "djassa-store/panier.html",{"panier":ALL,"total":TOTAL,"type":type,"count":count,"en_cours":en_cours})