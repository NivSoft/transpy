from django.db import models

class Arquivo(models.Model):
    mes = models.PositiveIntegerField()
    ano = models.PositiveIntegerField()
    arquivo_csv = models.FileField(verbose_name='Arquivo CSV', null=True)
    identificacao = models.CharField(max_length=30, verbose_name='Identificação', default=None, blank=True, null=True)
    class Meta:
        verbose_name_plural = 'Arquivos'
        verbose_name = 'Arquivo'
        unique_together = ('mes','ano')
    def __str__(self):
        return self.identificacao
    def save(self, force_insert=False, force_update=False, using=None,
             update_fields=None):
        if self.arquivo_csv:
            self.identificacao = "Dados de {}/{}".format(self.mes, self.ano)
            super(Arquivo, self).save()

class Pessoa(models.Model):
    matricula = models.IntegerField()
    funcionario = models.CharField(max_length=100)
    cargo = models.CharField(max_length=100)
    data_admissao = models.CharField(max_length=10)
    salario_fixo = models.CharField(max_length=15)
    tota_bruto = models.CharField(max_length=15)
    total_desconto = models.CharField(max_length=15)
    liquido = models.CharField(max_length=15)
    mes = models.IntegerField(default=None)
    ano = models.IntegerField(default=None)
    class Meta:
        unique_together = ('funcionario','mes','ano')
        ordering = ('funcionario', 'mes', 'ano')
    def __str__(self):
        return "{} - {}/{}".format(self.funcionario, self.mes, self.ano)