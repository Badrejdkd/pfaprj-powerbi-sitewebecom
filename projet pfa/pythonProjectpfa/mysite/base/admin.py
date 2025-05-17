from django.contrib import admin

# Register your models here.
from django.contrib import admin
from .models import Compagnie, Produit, Client, Commande

admin.site.register(Compagnie)
admin.site.register(Produit)
admin.site.register(Client)
admin.site.register(Commande)