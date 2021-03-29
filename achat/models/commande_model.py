from django.db import models
from django.contrib.auth.models import User
from .phone_model import Phone

class Commande(models.Model):
    id = models.BigAutoField(primary_key=True)
    id_users = models.ForeignKey(User, models.DO_NOTHING, db_column='id_users')
    id_phone = models.ForeignKey(Phone, models.DO_NOTHING, db_column='id_phone')
    quantite = models.IntegerField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'commande'