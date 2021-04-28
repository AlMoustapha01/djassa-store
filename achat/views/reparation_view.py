from django.db.models.base import Model
from django.shortcuts import redirect, render
from achat.models.modele_model import ModelePhone
from achat.models.marque_model import Marque
from achat.models.price_phone_model import PricePhone
from achat.models.color_phone_model import ColorPhone
from achat.models.panier_model import Panier
from achat.models.panne_model import Panne
from achat.models.rdv_model import Rdv
from rest_framework.response import Response
from rest_framework import mixins,views
from rest_framework import generics
from rest_framework import viewsets, status
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login,logout
from django.contrib.auth.decorators import login_required
from django.db.models.functions import Lower
from django.db.models import Count

def reparation_view(request):
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
    count = None
    if request.user.is_authenticated:
        panier = Panier.objects.filter(id_users=request.user)
        count = len(panier)
    return render (request,'djassa-store/reparation.html',{'marque':marque,'modele_phone':modele_phone,'count':count})

def detail_reparation_view(request,id_modele):
    phone = list(ColorPhone.objects.filter(id_modele=id_modele))
    phone1= phone[0].id
    price = list(PricePhone.objects.filter(id_color=phone1))
    print(price)
    modele = ModelePhone.objects.get(id=id_modele)
    panne = Panne.objects.filter(id_modele=id_modele)
    
    return render(request,'djassa-store/product-detail-repa.html',{'phone':phone,'modele':modele,'panne':panne})

def rdv_view(request):
    if request.POST:
        if request.user.is_authenticated :
            rdv = Rdv()
            panne = ""
            if 'ecran' in request.POST:
                panne = panne + request.POST['ecran']+ "\n"
            if 'vitre_arriere' in request.POST:
                panne = panne + request.POST['vitre_arriere'] + "\n"
            if 'camera' in request.POST:
                panne = panne + request.POST['camera'] + "\n"
            if 'batterie' in request.POST:
                panne = panne + request.POST['batterie'] + "\n"
            if 'connectique' in request.POST:
                panne = panne + request.POST['connectique'] + "\n"
            if 'haut_parleur' in request.POST:
                panne = panne + request.POST['haut_parleur'] + "\n"
            if 'autre' in request.POST: 
                panne = panne + request.POST['autre']

            rdv.panne= panne
            rdv.id_users = request.user
            rdv.modele = request.POST['modele']
            rdv.description_panne = request.POST['modele']
            rdv.date_rdv = request.POST['date']
            rdv.heure_rdv = request.POST['heure']
            rdv.save()
            success = "Votre rendez-vous a bien été pris en compte"
            return render(request,'djassa-store/envoyer-phone.html' , {"success":success})
        else:
            return redirect('/login')
    return render(request,'djassa-store/envoyer-phone.html')
