from django.db import models
from django.db import models
from django.db import models


class Compagnie(models.Model):
    nom = models.CharField(max_length=100, unique=True)
    adresse = models.CharField(max_length=255)
    telephone = models.CharField(max_length=20, unique=True, null=True, blank=True)
    email = models.EmailField(max_length=100, unique=True)
    image = models.ImageField(upload_to='compagnie/', null=True, blank=True)

    def __str__(self):
        return self.nom


from django.db import models

class Produit(models.Model):
    nom = models.CharField(max_length=100)
    description = models.TextField(blank=True)
    prix = models.DecimalField(max_digits=10, decimal_places=2)
    stock = models.IntegerField(default=0)
    image = models.ImageField(upload_to='produits/', null=True, blank=True)  # ← ajout ici
    compagnie = models.ForeignKey('Compagnie', on_delete=models.CASCADE, related_name="produits")

    def __str__(self):
        return f"{self.nom} ({self.compagnie.nom})"



class Client(models.Model):
    nom = models.CharField(max_length=50)
    prenom = models.CharField(max_length=50)
    adresse = models.CharField(max_length=255)
    telephone = models.CharField(max_length=20, unique=True, null=True, blank=True)
    email = models.EmailField(max_length=100, unique=True)

    def __str__(self):
        return f"{self.prenom} {self.nom}"


class Commande(models.Model):
    STATUT_CHOICES = [
        ('En cours', 'En cours'),
        ('Livrée', 'Livrée'),
        ('Annulée', 'Annulée'),
    ]
    date_commande = models.DateField(auto_now_add=True)
    statut = models.CharField(max_length=20, choices=STATUT_CHOICES, default='En cours')
    client = models.ForeignKey(Client, on_delete=models.CASCADE, related_name='commandes')
    compagnie = models.ForeignKey(Compagnie, on_delete=models.CASCADE, related_name='commandes')

    def __str__(self):
        return f"Commande #{self.id} - {self.client.nom} - {self.statut}"


# Create your models here.
