from django.urls import path

from api.views import FuncionarioList

urlpatterns = [
    path('api/funcionario', FuncionarioList.as_view()),
]