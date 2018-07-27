from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models import Q
from django.shortcuts import render, get_object_or_404

from django.template import RequestContext
from django.utils.timezone import now

from licitacao.models import Modalidade, Tipo, Situacao, Arquivo


def licitacao(request):
    modalidades = Tipo.objects.all().order_by('nome')
    anos = range(2015, now().year+1)
    status = Situacao.objects.all().order_by('status')
    lista_modalidades = Modalidade.objects.all().order_by('-criado_em','-identificacao')
    q = request.GET.get("q")
    if q:
        lista_modalidades = lista_modalidades.all().filter(
                Q(tipo__nome__icontains=q)|
                Q(numero__icontains=q)|
                Q(criado_em__icontains=q)|
                Q(situacao__status__icontains=q)|
                Q(objeto__icontains=q)
                ).order_by('-criado_em')
    paginacao = Paginator(lista_modalidades, 10)
    pagina_request = 'pagina'
    pagina = request.GET.get(pagina_request)
    contacts = paginacao.get_page(pagina)
    context = {
        'anos':anos,
        'lista':lista_modalidades,
        'contacts': contacts,
        'pagina_request':pagina_request,
        'modalidades':modalidades,
        'status':status
        }
    return render(request, 'licitacao/home.html',context)

def detalhes(request, modalidade_id):
    dados = get_object_or_404(Modalidade, pk=modalidade_id)
    arquivos = Arquivo.objects.filter(modalidade__pk=modalidade_id)
    context = RequestContext(request)
    return render(request, 'licitacao/detalhes.html', {'dados':dados,'arquivos':arquivos}, context)

def contrato(request):
    lista_modalidades = Modalidade.objects.all().order_by('-criado_em','-identificacao')
    q = request.GET.get("q")
    if q:
        lista_modalidades = lista_modalidades.all().filter(
                Q(contrato__icontains=q)|
                Q(criado_em__icontains=q)|
                Q(objeto__icontains=q)
                ).order_by('-criado_em')
    paginacao = Paginator(lista_modalidades, 10)
    pagina_request = 'pagina'
    pagina = request.GET.get(pagina_request)
    contacts = paginacao.get_page(pagina)
    context = {
        'lista':lista_modalidades,
        'contacts': contacts,
        'pagina_request':pagina_request,
        }
    return render(request, 'licitacao/contrato.html',context)