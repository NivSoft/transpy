from django.shortcuts import render

from django.template import RequestContext
from django.utils.timezone import now

from licitacao.models import Modalidade

def licitacao(request):
    ano_atual = now().year
    lista_modalidades = Modalidade.objects.all().filter(ano=ano_atual).order_by('criado_em')
    context = RequestContext(request)
    return render(request, 'licitacao/home.html',{'lista':lista_modalidades,'ano':ano_atual})