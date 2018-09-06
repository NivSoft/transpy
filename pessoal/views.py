from django.core.paginator import Paginator
from django.db.models import Q
from django.shortcuts import render, get_object_or_404
import csv

from django.template import RequestContext
from django.utils import timezone
from django.views.generic import ListView

from pessoal.forms import FuncionarioFilter
from pessoal.models import Funcionario


def pessoal(request):
    query = Funcionario.objects.all().order_by('data', 'nome')
    q = request.GET.get("q")
    if q:
        query = Funcionario.objects.all().filter(
            Q(matricula__icontains=q) |
            Q(nome__icontains=q) |
            Q(cargo__icontains=q) |
            Q(data_admissao__icontains=q) |
            Q(salario_fixo__icontains=q) |
            Q(tota_bruto__icontains=q) |
            Q(total_desconto__icontains=q) |
            Q(liquido__icontains=q) |
            Q(data__year__icontains=q) |
            Q(data__month__icontains=q) |
            Q(vinculo__icontains=q)
        ).order_by('nome')
    paginacao = Paginator(query, 10)
    pagina_request = 'pagina'
    pagina = request.GET.get(pagina_request)
    contacts = paginacao.get_page(pagina)
    context = {
        'dados': query,
        'pagina_request': pagina_request,
        'contacts': contacts,
    }
    return render(request, 'pessoal/home.html', context)


def links_iniciais(request):
    context = {}
    return render(request, 'pessoal/links.html', context)


def filtros(request):
    vinculo = Funcionario.objects.values_list('vinculo', flat=True).order_by('vinculo').distinct()
    dataano = Funcionario.objects.values_list('data', flat=True).order_by('data').distinct()
    context = {'vinculo': vinculo, 'dataano': dataano, }
    return render(request, 'pessoal/cargos.html', context)


def listadecargos(request):
    ultimo_mes = Funcionario.objects.values_list('mes', flat=True).order_by('mes').distinct().last()
    ultimo_ano = Funcionario.objects.values_list('ano', flat=True).order_by('ano').distinct().last()
    meses = Funcionario.objects.values_list('mes', flat=True).order_by('mes').distinct()
    anos = Funcionario.objects.values_list('ano', flat=True).order_by('ano').distinct()
    tipo_vinculo = Funcionario.objects.values_list('vinculo', flat=True).order_by('vinculo').distinct()
    lista = ()
    vinculo = request.GET.get('vinculo')
    ano = request.GET.get('ano')
    mes = request.GET.get('mes')
    form = FuncionarioFilter()
    if vinculo or ano or mes:
        lista = Funcionario.objects.all().filter(
            vinculo__contains=vinculo,
            ano__contains=ano,
            mes__contains=mes
        ).order_by('nome')
    paginacao = Paginator(lista, 10)
    pagina_request = 'pagina'
    pagina = request.GET.get(pagina_request)
    contacts = paginacao.get_page(pagina)
    context = {
        'lista': lista,
        'form': form,
        'contacts': contacts,
        'pagina_request': pagina_request,
        'tipo_vinculo': tipo_vinculo,
        'ultimo_mes': ultimo_mes,
        'ultimo_ano': ultimo_ano,
        'anos': anos,
        'meses': meses,
    }
    return render(request, 'pessoal/funcionarios.html', context)
