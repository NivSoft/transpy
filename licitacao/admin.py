from django.contrib import admin

# Register your models here.
from licitacao.models import Tipo, Processo, Contrato, Modalidade

#class ProcessoAdmin(admin.ModelAdmin):
#    filter_horizontal = ('licitantes_hab',)
#
#admin.site.register(Licitante)
#admin.site.register(Processo, ProcessoAdmin)

admin.site.register(Tipo)
admin.site.register(Contrato)
admin.site.register(Processo)
admin.site.register(Modalidade)