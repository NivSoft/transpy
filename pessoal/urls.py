from django.urls import path

from pessoal import views

urlpatterns = [
    path('pessoal/', views.pessoal),
    path('apresentacaopessoal/', views.links_iniciais),
]
