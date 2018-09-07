from django import forms
from django.forms import Select, NumberInput
from pessoal.models import Funcionario


class FuncionarioFilter(forms.ModelForm):

    class Meta:
        model = Funcionario
        fields = ['vinculo','ano', 'mes']
        widgets = {
            'vinculo': Select(attrs={'class': 'custom-select','name':'teste'}),
            'ano': NumberInput(attrs={'class': 'form-control'}),
            'mes': NumberInput(attrs={'class': 'form-control'}),
        }