from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models import Q
from django.shortcuts import render, get_object_or_404

from django.template import RequestContext
from django.utils.timezone import now

from licitacao.models import Modalidade, Tipo, Situacao


def licitacao(request):
    ano_atual = now().year
    modalidades = Tipo.objects.all().order_by('nome')
    status = Situacao.objects.all().order_by('status')
    lista_modalidades = Modalidade.objects.all().filter(ano=ano_atual).order_by('-criado_em')
    query = request.GET.get("q")
    if query:
        lista_modalidades = lista_modalidades.filter(
                Q(tipo__nome__icontains=query)|
                Q(criado_em__icontains=query)|
                Q(situacao__status__icontains=query)|
                Q(objeto__icontains=query)
                ).order_by('-criado_em')
    paginacao = Paginator(lista_modalidades, 10)
    pagina_request = 'pagina'
    pagina = request.GET.get(pagina_request)
    contacts = paginacao.get_page(pagina)
    context = {
        'lista':lista_modalidades,
        'ano':ano_atual,
        'contacts': contacts,
        'pagina_request':pagina_request,
        'modalidades':modalidades,
        'status':status
        }
    return render(request, 'licitacao/home.html',context)
