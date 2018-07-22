from django.contrib import admin

# Register your models here.
from pessoal.models import Arquivo, Pessoa

admin.site.register(Arquivo)
admin.site.register(Pessoa)