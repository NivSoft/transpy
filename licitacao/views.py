from django.shortcuts import render, get_object_or_404

from django.template import RequestContext
from django.utils.timezone import now

from licitacao.models import Modalidade, Tipo, Ano, Situacao


def licitacao(request):
    ano_atual = now().year
    lista_modalidades = Modalidade.objects.all().filter(ano=ano_atual).order_by('criado_em')
    modalidades = Tipo.objects.all().order_by('nome')
    anos = Ano.objects.all()
    situacao = Situacao.objects.all()
    context = RequestContext(request)
    return render(request, 'licitacao/home.html',{'lista':lista_modalidades,'ano':ano_atual,'modalidades':modalidades, 'anos':anos, 'situacao':situacao}, context)

def filtros(request, modalidade_tipo,modalidade_ano, modalidade_situacao, modalidade_objeto):
    modalidade = Modalidade.objects.all().filter(
        modalidade=modalidade_tipo,
        ano=modalidade_ano,
        situacao=modalidade_situacao,
        objeto=modalidade_objeto
        ).order_by('criado_em')
