from django.urls import path

from licitacao import views

urlpatterns = [
    path('licitacao/', views.licitacao),
    path('contrato/', views.contrato),
    path('detalhes/<int:modalidade_id>/', views.detalhes),
]
