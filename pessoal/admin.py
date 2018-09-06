from django.contrib import admin

# Register your models here.
from pessoal.models import Arquivo, Funcionario

admin.site.register(Arquivo)
admin.site.register(Funcionario)