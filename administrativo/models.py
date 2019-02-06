from django.db import models
from django.utils import timezone

class Orgao(models.Model):
    nome = models.CharField(max_length=80)
    logo = models.ImageField()
    cnpj = models.BigIntegerField()
    rua = models.CharField(max_length=80)
    numero = models.PositiveIntegerField()
    bairro = models.CharField(max_length=80)
    cidade = models.CharField(max_length=80)
    cep = models.PositiveIntegerField()
    telefone = models.PositiveIntegerField()

    def __str__(self):
        return self.nome

class Convenio(models.Model):
    termo = models.TextField(verbose_name="Termo de Referência")
    pub_date = models.DateField(verbose_name="Data de Publicação")
    arquivo = models.FileField(default=None, blank=True, null=True)

    def __str__(self):
        return self.termo

    def save(self, force_insert=False, force_update=False, using=None,
             update_fields=None):
        if not self.pub_date:
            self.pub_date = timezone.now()
            super(Convenio, self).save()
