from django.core.paginator import Paginator
from django.db.models import Q
from django.shortcuts import render
from django.template import RequestContext

from administrativo.models import Convenio


def home(request):
    context = RequestContext(request)
    return render(request, 'administrativo/home.html', {})


def convenio(request):
    lista_convenios = Convenio.objects.all().order_by('-pub_date')
    q = request.GET.get("q")
    if q:
        lista_convenios = lista_convenios.all().filter(
            Q(pub_date__icontains=q) |
            Q(termo__icontains=q)
        ).order_by('-pub_data')
    paginacao = Paginator(lista_convenios, 10)
    pagina_request = 'pagina'
    pagina = request.GET.get(pagina_request)
    contacts = paginacao.get_page(pagina)
    context = {
        'lista': lista_convenios,
        'contacts': contacts,
        'pagina_request': pagina_request,
    }
    return render(request, 'administrativo/convenio.html', context)
