from django.db import models
from .modele_model import *
from .color_phone_model import *

class PricePhone(models.Model):
    id = models.BigAutoField(primary_key=True)
    capacite = models.CharField(max_length=255, blank=True, null=True)
    prix = models.CharField(max_length=255, blank=True, null=True)
    id_color = models.ForeignKey(ColorPhone, models.DO_NOTHING, db_column='id_color')
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    def __str__(self):
        return str(self.id_color) + ' '+ str(self.capacite)

    class Meta:
        managed = True
        db_table = 'pricephone'