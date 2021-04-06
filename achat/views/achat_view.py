from django.db.models.base import Model
from django.shortcuts import redirect, render
from achat.models.modele_model import ModelePhone
from achat.models.marque_model import Marque
from achat.models.price_phone_model import PricePhone
from achat.models.color_phone_model import ColorPhone
from achat.models.panier_model import Panier
from achat.models.troc_model import Troc
from rest_framework.response import Response
from rest_framework import mixins,views
from rest_framework import generics
from rest_framework import viewsets, status
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login,logout
from django.contrib.auth.decorators import login_required
from django.db.models.functions import Lower
from django.db.models import Count


def index(request):
    return render(request,'djassa-store/index.html')
    
def achat_view(request):
    marque = list(Marque.objects.all())
    modele_phone = list(ModelePhone.objects.order_by(Lower('name').asc()))
    iphone = ModelePhone.objects.filter(id_marque=1)
    samsung = ModelePhone.objects.filter(id_marque=3)
    huawei = ModelePhone.objects.filter(id_marque=2)
    iphone_12 = list(ModelePhone.objects.filter(name__icontains='12'))
    iphone_11 = list(ModelePhone.objects.filter(name__icontains='11'))
    iphone_X = list(ModelePhone.objects.filter(name__icontains='x'))
    iphone_SE = list(ModelePhone.objects.filter(name__icontains='se'))
    iphone_8 = list(ModelePhone.objects.filter(name__contains='8'))
    iphone_7 = list(ModelePhone.objects.filter(name__contains='7'))
    iphone_6 = list(ModelePhone.objects.filter(name__contains='6'))
    print('{} {} {} {}'.format(marque,iphone_11,iphone_8,iphone_7))
    count= None
    if request.user.is_authenticated:
        panier = Panier.objects.filter(id_users=request.user)
        count = len(panier)
    return render (request,'djassa-store/achat.html',{'marque':marque,'modele_phone':modele_phone,'count':count})

def detail_view(request,id_modele):
    phone = list(ColorPhone.objects.filter(id_modele=id_modele))
    phone1= phone[0].id
    price = list(PricePhone.objects.filter(id_color=phone1))
    print(price)
    ## Capacité
    capacity = PricePhone.objects.all().values('capacite').annotate(total=Count('capacite'))
    print(capacity)
    modele = ModelePhone.objects.get(id=id_modele)
    All_modele = list(ModelePhone.objects.all())
    count=None
    if request.user.is_authenticated:
        panier = Panier.objects.filter(id_users=request.user)
        count = len(panier)
    if request.POST:
        if request.user.is_authenticated:
            paniers = Panier()
            troc = Troc()
            modeles= request.POST['modele']
            couleur = request.POST['couleur']
            capacite = request.POST['capacite']
            phones = ColorPhone.objects.filter(id_modele=modeles).get(couleur=couleur)
            print(phones)
            prices = PricePhone.objects.filter(id_color=phones).get(capacite=capacite)
            print(prices)
            quantite=1
            total= prices.prix
            status = False
            panier = Panier.objects.filter(id_users=request.user)
            count = len(panier)
            if request.POST['action'] == "ACHETER":
                type= "ACHAT"
                paniers.id_users= request.user
                paniers.id_price_phone = prices
                paniers.quantite= quantite
                paniers.total= total
                paniers.type = type
                paniers.status = status
                paniers.save()
                return redirect("/panier")
            else:
                type= "TROC"
                paniers.id_users= request.user
                paniers.id_price_phone = prices
                paniers.quantite= quantite
                paniers.total= total
                paniers.type = type
                paniers.status = status
                paniers.save()
                troc.panier = paniers
                troc.etat = request.POST['etat']
                troc.capacite= request.POST['cap']
                troc.phone = request.POST['model'].split('-')[0]
                if request.POST['etat']=="OUI":
                    troc.imei = request.POST['imei']
                    troc.save()
                else:
                    
                    troc.allum_bouton = request.POST['allum_bouton']
                    troc.boitier = request.POST['boitier']
                    troc.ecran_camera = request.POST['ecran_camera']
                    troc.imei = request.POST['imei']
                    troc.save()
                print(troc)
                return redirect("/panier")

        else:
            return redirect("/panier")
    return render(request,'djassa-store/product-detail.html',{'phone':phone,'capacite':capacity,'modele':modele,'prix':price,'all_modele':All_modele,'count':count})
