from django import forms

class BuscaForm(forms.Form):
    modalidade = forms.ChoiceField(queryset=None)
