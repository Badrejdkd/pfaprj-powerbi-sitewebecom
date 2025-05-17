from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from django import forms
from django.contrib.auth.forms import AuthenticationForm

from django import forms
from .models import Client

class ClientForm(forms.ModelForm):
    class Meta:
        model = Client
        fields = ['nom', 'prenom', 'adresse', 'telephone', 'email']

class RegisterForm(UserCreationForm):
    email = forms.EmailField(required=True)

    USER_TYPE_CHOICES = [
        ('normal', 'Utilisateur Normal'),
        ('admin', 'Administrateur'),
    ]
    user_type = forms.ChoiceField(choices=USER_TYPE_CHOICES, required=True, label="Type d'utilisateur")

    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2', 'user_type']

    def save(self, commit=True):
        user = super().save(commit=False)
        user.email = self.cleaned_data['email']
        user_type = self.cleaned_data['user_type']

        if user_type == 'admin':
            user.is_staff = True  # Peut accéder au panneau d’administration
        else:
            user.is_staff = False

        if commit:
            user.save()
        return user


class CustomLoginForm(AuthenticationForm):
    username = forms.CharField(label="Nom d'utilisateur")
    password = forms.CharField(widget=forms.PasswordInput, label="Mot de passe")

