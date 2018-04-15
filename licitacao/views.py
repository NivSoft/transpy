from django.shortcuts import render

from django.template import RequestContext
from django.utils.timezone import now

from licitacao.models import Modalidade

def licitacao(request):
    lista_modalidades = Modalidade.objects.all().filter(ano=now().year).order_by('criado_em')
    context = RequestContext(request)
    return render(request, 'licitacao/home.html',{'lista':lista_modalidades})