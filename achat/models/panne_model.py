from django.db import models
from .modele_model import *


class Panne(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    price = models.CharField(max_length=255, blank=True, null=True)
    id_modele = models.ForeignKey(ModelePhone, models.DO_NOTHING, db_column='id_modele')
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    def __str__(self):
        return str(self.id_modele) +' '+ str(self.name)

    class Meta:
        managed = True
        db_table = 'panne'