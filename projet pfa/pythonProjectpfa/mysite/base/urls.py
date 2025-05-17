from django.urls import path
from . import views
from .views import complist,ProductsByCompany


urlpatterns = [
    path('', views.complist.as_view(), name='home'),
    path('contact', views.contact.as_view(), name='contact'),
    path('data', views.PowerBIView.as_view(), name='data'),
    path('login/', views.custom_login_view, name='login'),
    path('logout/', views.user_logout, name='logout'),
    path('register/', views.register, name='register'),
    path('list/', views.Productlist.as_view(), name='list'),
    path('detail/<int:pk>/', views.ProductDetail.as_view(), name='product_detail'),
    path('compagnie/<int:compagnie_id>/produits/', views.ProductsByCompany.as_view(), name='products_by_company'),
    path('commander/<int:produit_id>/', views.CommanderView.as_view(), name='commander'),
    path('panier/', views.PanierView.as_view(), name='panier'),

]
