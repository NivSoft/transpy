from django.conf.urls import url
from django.urls import path
from rest_framework.documentation import include_docs_urls

from api.views import FuncionarioList

urlpatterns = [
    path('api/funcionarios/folha', FuncionarioList.as_view()),
    url(r'^api/docs', include_docs_urls(title='Documentação API')),
]