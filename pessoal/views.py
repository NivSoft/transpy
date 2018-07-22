from django.core.paginator import Paginator
from django.db.models import Q
from django.shortcuts import render, get_object_or_404
import csv

from django.template import RequestContext

from pessoal.models import Pessoa


def pessoal(request):
    query = Pessoa.objects.all()
    q = request.GET.get("q")
    if q:
        query = Pessoa.objects.all().filter(
                Q(matricula__icontains=q)|
                Q(funcionario__icontains=q)|
                Q(cargo__icontains=q)|
                Q(data_admissao__icontains=q)|
                Q(salario_fixo__icontains=q)|
                Q(tota_bruto__icontains=q)|
                Q(total_desconto__icontains=q)|
                Q(liquido__icontains=q)
                ).order_by('-funcionario')
    paginacao = Paginator(query, 10)
    pagina_request = 'pagina'
    pagina = request.GET.get(pagina_request)
    contacts = paginacao.get_page(pagina)
    context = {
        'dados':query,
        'pagina_request':pagina_request,
        'contacts':contacts,
        }
    return render(request, 'pessoal/home.html', context)