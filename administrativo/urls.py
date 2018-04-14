from django.urls import path

from administrativo import views

urlpatterns = [
    path('', views.home),
]
