from django.db import models
from django.contrib.auth.models import User
from .phone_model import Phone
from .price_phone_model import PricePhone

class Panier(models.Model):
    id = models.BigAutoField(primary_key=True)
    id_users = models.ForeignKey(User, models.DO_NOTHING, db_column='id_users')
    id_price_phone = models.ForeignKey(PricePhone, models.DO_NOTHING, db_column='id_price_phone',null=True)
    quantite = models.IntegerField(blank=True, null=True)
    total = models.CharField(max_length=255, blank=True, null=True)
    type = models.CharField(max_length=255, blank=True, null=True)
    status = models.BooleanField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    
    class Meta:
        managed = True
        db_table = 'panier'