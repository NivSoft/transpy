import csv, sys, os

from django.utils import timezone

dir_projeto = "Coloque o diretório do projeto exemplo: /deploy/App"
sys.path.append(dir_projeto)
os.environ['DJANGO_SETTINGS_MODULE'] = 'transparencia.settings'
import django

django.setup()
from pessoal.models import Funcionario


class Dados():

    def deletar(self, ano, mes, dia, vinculo):
        modelo = Funcionario.objects.filter(data=timezone.datetime(ano, mes, dia), vinculo=vinculo)
        modelo.delete()

    def importar(self, arquivo, mes, vinculo):
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
            importacao.liquido = linha[7]
            importacao.data = timezone.datetime(2018, mes, 1)
            importacao.vinculo = vinculo
            if importacao.data:
                importacao.ano = importacao.data.year
                importacao.mes = importacao.data.month
            importacao.save()


chamada = input("O que você gostaria de fazer? (I) Importar ou (E) Excluir ")
if chamada == "i":
    arquivo = input("Digite o caminho do arquivo -> ")
    mes = int(input("Digite o mês -> "))
    sigla_vinculo = str(input("Digite o Vínculo -> e (efetivo) c (comissionado)"))
    if sigla_vinculo == "e":
        vinculo = "Efetivo"
        dados = Dados()
        dados.importar(arquivo, mes, vinculo)
    elif sigla_vinculo == "c":
        vinculo = "Comissão"
        dados = Dados()
        dados.importar(arquivo, mes, vinculo)
    else:
        print("Comando inválido")
elif chamada == "e":
    ano = int(input("Digite o Ano -> "))
    mes = int(input("Digite o Mês -> "))
    dia = int(input("Digite o Dia -> "))
    vinculo = str(input("Digite o Vínculo -> "))
    dados = Dados()
    dados.deletar(ano, mes, dia, vinculo)
else:
    print('Comando inválido')