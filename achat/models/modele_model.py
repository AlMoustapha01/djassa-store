from django.db import models
from .marque_model import *


class ModelePhone(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    image = models.ImageField(null=True)
    id_marque = models.ForeignKey(Marque, models.DO_NOTHING, db_column='id_marque')
    troc= models.CharField(max_length=255, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    def __str__(self):
        return self.name
        
    class Meta:
        managed = True
        db_table = 'modele_phone'