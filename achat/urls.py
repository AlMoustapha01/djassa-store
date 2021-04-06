
from django.urls import path 
from django.conf import settings
from django.conf.urls.static import static

# importing views from views..py 
from .views.achat_view import achat_view,detail_view,index
from .views.users_view import login_view,register_view,panier_view,logout_view
from .views.reparation_view import reparation_view,detail_reparation_view,rdv_view
urlpatterns = [ 
    path('index',index),
    path('achat', achat_view),
    path('detail/<int:id_modele>',detail_view),
    path('login',login_view),
    path('register',register_view),
    path('panier',panier_view),
    path('logout',logout_view),
    path('reparation',reparation_view),
    path('detail-reparation/<int:id_modele>',detail_reparation_view),
    path('rdv',rdv_view),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
