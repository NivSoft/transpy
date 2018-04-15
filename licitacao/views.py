from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models import Q
from django.shortcuts import render, get_object_or_404

from django.template import RequestContext
from django.utils.timezone import now

from licitacao.models import Modalidade, Tipo, Ano, Situacao


def licitacao(request):
    ano_atual = now().year
    lista_modalidades = Modalidade.objects.all().filter(ano=ano_atual).order_by('criado_em')
    modalidades = Tipo.objects.all().order_by('nome')
    anos = Ano.objects.all().order_by('ano')
    situacao = Situacao.objects.all().order_by('status')
    query = request.GET.get("q")
    if query:
        lista_modalidades = lista_modalidades.filter(
                Q(tipo__nome__icontains=query)|
                Q(criado_em__icontains=query)|
                Q(situacao__status__icontains=query)|
                Q(objeto__icontains=query)
                )
    paginacao = Paginator(lista_modalidades, 10)
    requisicao_pagina = "pagina"
    pagina = requisicao_pagina
    try:
        queryset = paginacao.page(pagina)
    except PageNotAnInteger:
        queryset = paginacao.page(1)
    except EmptyPage:
        queryset = paginacao.page(paginacao.num_pages)
    context = {
        'lista':lista_modalidades,
        'ano':ano_atual,
        'modalidades':modalidades,
        'anos':anos,
        'situacao':situacao
        }
    return render(request, 'licitacao/home.html',context)
