from django.contrib import admin
from .models.phone_model import *
from .models.commande_model import *
from .models.modele_model import *
from .models.marque_model import *
from .models.panier_model import *
from .models.color_phone_model import ColorPhone
from .models.price_phone_model import PricePhone
from .models.troc_model import Troc
from .models.panne_model import Panne
from .models.rdv_model import Rdv
from .models.client_model import *
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.contrib.auth.models import User

class ClientInline(admin.StackedInline):
    model = Client
    can_delete = False
    verbose_name_plural = 'client'

# Define a new User admin
class UserAdmin(BaseUserAdmin):
    inlines = (ClientInline,)

# Register your models here.
admin.site.register(Phone)
admin.site.register(Commande)
admin.site.register(ModelePhone)
admin.site.register(Marque)
admin.site.register(Panier)
admin.site.register(ColorPhone)
admin.site.register(PricePhone)
admin.site.register(Troc)
admin.site.register(Panne)
admin.site.register(Rdv)
# Re-register UserAdmin
admin.site.unregister(User)
admin.site.register(User, UserAdmin)
