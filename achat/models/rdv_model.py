from django.db import models
from django.contrib.auth.models import User

class Rdv(models.Model):
    id = models.BigAutoField(primary_key=True)
    id_users = models.ForeignKey(User, models.DO_NOTHING, db_column='id_users')
    panne = models.CharField(max_length=255, blank=True, null=True)
    modele = models.CharField(max_length=255, blank=True, null=True)
    description_panne = models.TextField(blank=True, null=True)
    date_rdv = models.DateField(blank=True, null=True)
    heure_rdv = models.TimeField(blank=True, null=True)
    status = models.BooleanField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    
    class Meta:
        managed = True
        db_table = 'rdv'