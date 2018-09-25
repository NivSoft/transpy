from django.db.models import Q

from rest_framework import generics
from rest_framework.pagination import PageNumberPagination
from rest_framework.permissions import IsAuthenticatedOrReadOnly

from api.core.serializer import FuncionarioSerializer
from pessoal.models import Funcionario


class StandardResultsSetPagination(PageNumberPagination):
    page_size = 100
    page_size_query_param = 'page_size'
    max_page_size = 1000


class FuncionarioList(generics.ListCreateAPIView):
    """
    get:
    List Funcionarios - Folha

    """
    serializer_class = FuncionarioSerializer
    permission_classes = (IsAuthenticatedOrReadOnly,)
    pagination_class = StandardResultsSetPagination

    def get_queryset(self):
        # Busca Todos
        queryset = Funcionario.objects.all()
        # Filtros
        matricula = self.request.query_params.get('matricula', None)
        ano = self.request.query_params.get('ano', None)
        mes = self.request.query_params.get('mes', None)
        vinculo = self.request.query_params.get('vinculo', None)
        # Lista de Filtros
        filtro_api = (Q())
        # Validadores
        if matricula:
            filtro_api.add(Q(matricula=matricula), Q.AND)
        if ano:
            filtro_api.add(Q(ano=ano), Q.AND)
        if mes:
            filtro_api.add(Q(mes=mes), Q.AND)
        if vinculo:
            filtro_api.add(Q(vinculo=vinculo), Q.AND)
        # Condição para aplicação do filtro
        if filtro_api is not None:
            queryset = queryset.filter(filtro_api)
        # retornar busca
        return queryset
