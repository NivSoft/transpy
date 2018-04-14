from django.urls import path

from licitacao import views

urlpatterns = [
    path('licitacao/', views.licitacao)
]
