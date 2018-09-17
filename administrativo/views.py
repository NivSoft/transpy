from django.shortcuts import render
from django.template import RequestContext

from administrativo.models import Orgao


def home(request):
    dados = Orgao.objects.all()
    context = {

        'dados':dados,

    }
    return render(request, 'administrativo/home.html', context)