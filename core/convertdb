import csv, sys, os

from django.utils import timezone

dir_projeto = "/home/danilo/Documentos/Projetos/transparencia/transparencia/"
sys.path.append(dir_projeto)
os.environ['DJANGO_SETTINGS_MODULE']='settings'
import django
django.setup()
from pessoal.models import Funcionario


class Dados():


    def deletar(self, ano, mes, dia, vinculo):
        modelo = Funcionario.objects.filter(data=timezone.datetime(ano,mes,dia), vinculo=vinculo)
        modelo.delete()

    def importar(self, arquivo, mes):
        data = csv.reader(open(arquivo), delimiter=";")
        for linha in data:
            importacao = Funcionario()
            importacao.matricula = linha[0]
            importacao.nome = linha[1]
            importacao.cargo = linha[2]
            importacao.data_admissao = linha[3]
            importacao.salario_fixo = linha[4]
            importacao.tota_bruto = linha[5]
            importacao.total_desconto = linha[6]
            importacao.liquido = linha[8]
            importacao.data = timezone.datetime(2018,mes, 1)
            importacao.vinculo = "Comissão"
            if importacao.data:
                importacao.ano = importacao.data.year
                importacao.mes = importacao.data.month
            importacao.save()

chamada = input("O que você gostaria de fazer? (I) Importar ou (E) Excluir ")
if chamada == "I" or "i":
    arquivo = input("Digite o caminho do arquivo -> ")
    mes = int(input("Digite o mês -> "))
    dados = Dados()
    dados.importar(arquivo, mes)
elif chamada == "E" or "e":
    ano = int(input("Digite o Ano -> "))
    mes = int(input("Digite o Mês -> "))
    dia = int(input("Digite o Dia -> "))
    vinculo = str(input("Digite o Vínculo -> "))
    dados = Dados()
    dados.deletar(ano,mes,dia,vinculo)