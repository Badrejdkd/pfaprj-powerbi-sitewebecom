
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from .form import RegisterForm
from django.views import View
from django.shortcuts import get_object_or_404

from .models import Produit, Compagnie
from django.views import View
from django.contrib.auth import authenticate, login
from django.shortcuts import render, redirect
from .form import CustomLoginForm
from django.contrib import messages
from django.views import View
from django.shortcuts import render
from django.views import View
from django.shortcuts import render, redirect
from .form import ClientForm
from .models import Client, Commande, Compagnie, Produit

class PanierView(View):
    def get(self, request):
        panier = request.session.get('panier', [])
        return render(request, 'panier.html', {'panier': panier})

from django.shortcuts import render, redirect
from django.views import View
from .models import Produit, Commande, Client
from .form import ClientForm

class CommanderView(View):
    def get(self, request, produit_id):
        form = ClientForm()  # Initialiser le formulaire du client
        try:
            produit = Produit.objects.get(id=produit_id)  # Récupérer le produit
        except Produit.DoesNotExist:
            return redirect('product_list')  # Rediriger si le produit n'existe pas

        return render(request, 'client_form.html', {'form': form, 'produit': produit})

    def post(self, request, produit_id):
        form = ClientForm(request.POST)
        try:
            produit = Produit.objects.get(id=produit_id)  # Récupérer le produit
        except Produit.DoesNotExist:
            return redirect('product_list')  # Rediriger si le produit n'existe pas

        if form.is_valid():
            client = form.save()  # Sauvegarder le client
            commande = Commande.objects.create(
                client=client,
                compagnie=produit.compagnie,
                statut='En cours'
            )
            # Ajouter la commande dans le panier de la session
            panier = request.session.get('panier', [])
            panier.append({
                'commande_id': commande.id,
                'produit_id': produit.id,
                'produit_nom': produit.nom,
                'prix': float(produit.prix)
            })
            request.session['panier'] = panier  # Sauvegarder le panier dans la session
            return redirect('panier')  # Rediriger vers la vue du panier

        # Si le formulaire n'est pas valide, réafficher le formulaire
        return render(request, 'client_form.html', {'form': form, 'produit': produit})


def custom_login_view(request):
    if request.method == 'POST':
        form = CustomLoginForm(request, data=request.POST)
        if form.is_valid():
            user = form.get_user()
            login(request, user)
            messages.success(request, f'Bienvenue {user.username} !')

            # Redirection selon le type d'utilisateur
            if user.is_staff:
                return redirect('data')  # À définir dans urls.py
            else:
                return redirect('home')   # À définir dans urls.py
    else:
        form = CustomLoginForm()
    return render(request, 'login.html', {'form': form})

def user_logout(request):
    logout(request)
    return redirect('login')

def register(request):
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Compte créé avec succès. Vous pouvez maintenant vous connecter.')
            return redirect('login')  # Remplace 'login' par le nom correct de ta vue de connexion
    else:
        form = RegisterForm()
    return render(request, 'register.html', {'form': form})


class Productlist(View):
    def get(self, request):
        query = request.GET.get('q')
        if query:
            products = Produit.objects.filter(nom__icontains=query)
        else:
            products = Produit.objects.all()
        return render(request, 'ListProduit.html', {'products': products, 'query': query})

class contact(View):
    def get(self, request):
        return render(request, 'contact.html')


class PowerBIView(View):
    def get(self, request):
        return render(request, 'powerbi.html')

class ProductsByCompany(View):
    def get(self, request, compagnie_id):
        compagnie = get_object_or_404(Compagnie, id=compagnie_id)
        produits = Produit.objects.filter(compagnie=compagnie)
        return render(request, 'products_by_company.html', {
            'compagnie': compagnie,
            'produits': produits
        })
class complist(View):
    def get(self,request):
        comp = Compagnie.objects.all()
        return render(request,'home.html',{'comp':comp})

class ProductDetail(View):
    def get(self, request, pk, *args, **kwargs):  # Ensure 'pk' is accepted
        product = get_object_or_404(Produit, id=pk)
        return render(request, 'detailproduit.html', {'product': product})


def home(request):
    return render(request, 'home.html')