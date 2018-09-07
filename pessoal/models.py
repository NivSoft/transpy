from django.db import models
from django.utils import timezone


#class Arquivo(models.Model):
#    mes = models.PositiveIntegerField()
#    ano = models.PositiveIntegerField()
#    arquivo_csv = models.FileField(verbose_name='Arquivo CSV', null=True)
#    identificacao = models.CharField(max_length=30, verbose_name='Identificação', default=None, blank=True, null=True)
#    class Meta:
#        verbose_name_plural = 'Arquivos'
#        verbose_name = 'Arquivo'
#        unique_together = ('mes','ano')
#    def __str__(self):
#        return self.identificacao
#    def save(self, force_insert=False, force_update=False, using=None,
#             update_fields=None):
#        if self.arquivo_csv:
#            self.identificacao = "Dados de {}/{}".format(self.mes, self.ano)
#            super(Arquivo, self).save()
#
##class Funcionario(models.Model):
##    EFE = 'Efetivo'
##    CC = 'Comissão'
##    TIPO_VINCULOS = (
##        (EFE, 'Efetivo'),
##        (CC, 'Comissão'),
##    )
##
##    matricula = models.IntegerField()
##    nome = models.CharField(max_length=100)
##    cargo = models.CharField(max_length=100)
##    data_admissao = models.CharField(max_length=10)
##    salario_fixo = models.CharField(max_length=15)
##    tota_bruto = models.CharField(max_length=15)
##    total_desconto = models.CharField(max_length=15)
##    liquido = models.CharField(max_length=15)
##    data = models.DateField(default=timezone.now)
##    vinculo = models.CharField(max_length=100, default=None, choices=TIPO_VINCULOS)
##    ano = models.PositiveIntegerField(default=None, blank=True, null=True)
##    mes = models.PositiveIntegerField(default=None, blank=True, null=True)
##
##
##    class Meta:
##        unique_together = ('nome','data')
##        ordering = ('nome', 'data')
##
##    def __str__(self):
##        return "{} - {}/{}".format(self.nome, self.data.month, self.data.year)
##
##    def save(self, force_insert=False, force_update=False, using=None,
##             update_fields=None):
##        ano = self.data.year
##        mes = self.data.month
##        if self.data:
##            self.ano = ano
##            self.mes = mes
##            super(Funcionario, self).save()