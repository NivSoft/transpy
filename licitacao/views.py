from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.db.models import Q
from django.shortcuts import render, get_object_or_404

from django.template import RequestContext
from django.utils.timezone import now

from licitacao.models import Modalidade, Tipo, Situacao


def licitacao(request):
    modalidades = Tipo.objects.all().order_by('nome')
    anos = range(2015, now().year+1)
    status = Situacao.objects.all().order_by('status')
    lista_modalidades = Modalidade.objects.all().filter(ano=now().year).order_by('-criado_em')
    queryobjeto = request.GET.get("queryobjeto")
    if queryobjeto:
        lista_modalidades = lista_modalidades.filter(
                Q(tipo__nome__icontains=queryobjeto)|
                Q(criado_em__icontains=queryobjeto)|
                Q(situacao__status__icontains=queryobjeto)|
                Q(objeto__icontains=queryobjeto)
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
