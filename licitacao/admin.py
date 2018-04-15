from django.contrib import admin

# Register your models here.
from licitacao.models import Tipo, Processo, Contrato, Modalidade, Situacao

#class ProcessoAdmin(admin.ModelAdmin):
#    filter_horizontal = ('licitantes_hab',)
#
#admin.site.register(Licitante)
#admin.site.register(Processo, ProcessoAdmin)

admin.site.register(Tipo)
admin.site.register(Contrato)
admin.site.register(Processo)
admin.site.register(Situacao)
admin.site.register(Modalidade)