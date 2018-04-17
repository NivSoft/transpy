from django.contrib import admin

# Register your models here.
from licitacao.models import Tipo, Processo, Contrato, Modalidade, Situacao, Arquivo

#class ProcessoAdmin(admin.ModelAdmin):
#    filter_horizontal = ('licitantes_hab',)
#
#admin.site.register(Licitante)
#admin.site.register(Processo, ProcessoAdmin)

class ArquivosInline(admin.StackedInline):
    model = Modalidade
    extra = 3


class ModalidadeAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Dados de Identificação',  {'fields':['identificacao','tipo','numero','objeto','processo','contrato']}),
        ('Status',                  {'fields':['situacao']}),
        ('Dados Temporais',         {'fields':['ano','criado_em']}),
        ('Documentação',            {'fields':['arquivos']}),
    ]

    inlines = ArquivosInline

admin.site.register(Tipo)
admin.site.register(Contrato)
admin.site.register(Processo)
admin.site.register(Situacao)
admin.site.register(Arquivo)
admin.site.register(Modalidade)