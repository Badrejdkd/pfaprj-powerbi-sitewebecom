# signals.py

from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import Compagnie, Produit, Client, Commande
from django.db import connections, transaction

@receiver(post_save, sender=Commande)
def sync_commande(sender, instance, created, **kwargs):
    if created:
        powerbi_cursor = connections['powerbi'].cursor()
        powerbi_cursor.execute("""
            INSERT INTO Commande (dateCommande, statut, idClient, idCompagnie)
            VALUES (%s, %s, %s, %s)
        """, [instance.date_commande, instance.statut, instance.client.id, instance.compagnie.id])
        transaction.commit(using='powerbi')

@receiver(post_save, sender=Compagnie)
def sync_compagnie(sender, instance, created, **kwargs):
    if created:
        powerbi_cursor = connections['powerbi'].cursor()
        powerbi_cursor.execute("""
            INSERT INTO Compagnie (idCompagnie, nom, adresse, telephone, email)
            VALUES (%s, %s, %s, %s, %s)
        """, [instance.id, instance.nom, instance.adresse, instance.telephone, instance.email])
        transaction.commit(using='powerbi')

@receiver(post_save, sender=Produit)
def sync_produit(sender, instance, created, **kwargs):
    if created:
        powerbi_cursor = connections['powerbi'].cursor()
        powerbi_cursor.execute("""
            INSERT INTO Produit (nom, description, prix, stock, idCompagnie)
            VALUES (%s, %s, %s, %s, %s)
        """, [instance.nom, instance.description, instance.prix, instance.stock, instance.compagnie.id])
        transaction.commit(using='powerbi')

@receiver(post_save, sender=Client)
def sync_client(sender, instance, created, **kwargs):
    if created:
        powerbi_cursor = connections['powerbi'].cursor()
        powerbi_cursor.execute("""
            INSERT INTO Client (nom, prenom, adresse, telephone, email)
            VALUES (%s, %s, %s, %s, %s)
        """, [instance.nom, instance.prenom, instance.adresse, instance.telephone, instance.email])
        transaction.commit(using='powerbi')



