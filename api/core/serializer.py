from rest_framework import serializers

from pessoal.models import Funcionario


class FuncionarioSerializer(serializers.ModelSerializer):

    class Meta:
        model = Funcionario
        fields = ('id', 'matricula', 'nome', 'cargo', 'data_admissao', 'salario_fixo','tota_bruto','total_desconto','liquido','data','vinculo')