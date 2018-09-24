from django.urls import path

from api.views import FuncionarioList

urlpatterns = [
    path('api/funcionario/folha', FuncionarioList.as_view()),
]