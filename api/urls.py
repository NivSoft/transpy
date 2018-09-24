from django.urls import path

from api.views import FuncionarioList

urlpatterns = [
    path('api/funcionarios/folha', FuncionarioList.as_view()),
]