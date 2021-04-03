from django.contrib.auth.models import User
from django.db import models
from .panier_model import Panier

class Troc(models.Model):
    panier = models.OneToOneField(Panier, on_delete=models.CASCADE)
    phone = models.CharField(max_length=255, blank=True, null=True)
    capacite = models.CharField(max_length=255, blank=True, null=True)
    etat = models.CharField(max_length=255, blank=True, null=True)
    allum_bouton = models.CharField(max_length=255, blank=True, null=True)
    boitier = models.CharField(max_length=255, blank=True, null=True)
    ecran_camera = models.CharField(max_length=255, blank=True, null=True)
    imei = models.CharField(max_length=255, blank=True, null=True) 