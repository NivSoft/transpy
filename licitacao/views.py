from django.shortcuts import render

from django.template import RequestContext
from django.utils.timezone import now

from licitacao.models import Modalidade

def licitacao(request):
    ano_atual = now()
    lista_modalidades = Modalidade.objects.all().filter(ano=ano_atual.year).order_by('criado_em')
    context = RequestContext(request)
    return render(request, 'licitacao/home.html',{'lista':lista_modalidades,'ano':ano_atual})