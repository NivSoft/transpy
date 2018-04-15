from django.db import models
from django.utils.timezone import now

class Tipo(models.Model):
    nome = models.CharField(max_length=30)
    criado_em = models.DateField(default=now())

    def __str__(self):
        return self.nome

class Processo(models.Model):

    numero = models.PositiveIntegerField(blank=True, null=True)
    ano = models.PositiveIntegerField(default=now().year)
    criado_em = models.DateField(default=now())

    class Meta:
        verbose_name_plural = "Processos"
        ordering = ('numero',)
        unique_together = ('ano','numero')

    def __str__(self):
        return "Processo {}/{}".format(self.numero,self.ano)

    def save(self, force_insert=False, force_update=False, using=None,
             update_fields=None):
        if not self.numero:
            dados = Processo.objects.all().order_by('numero')
            if dados:
                lista = []
                for n in dados:
                    lista.append(n.numero)
                self.numero = lista[-1]+1
                super(Processo, self).save()
            else:
                self.numero = 1
                super(Processo, self).save()
        else:
            super(Processo, self).save()

class Contrato(models.Model):
    numero = models.PositiveIntegerField(default=None, blank=True, null=True)
    inicio_data = models.DateField(default=None)
    fim_data = models.DateField(default=None)
    ano = models.PositiveIntegerField(default=now().year)
    criado_em = models.DateField(default=now())

    class Meta:
        verbose_name_plural = "Contratos"
        ordering = ('numero',)
        unique_together = ('ano','numero')

    def __str__(self):
        return "Contrato Número {}/{}".format(self.numero,self.ano)

    def save(self, force_insert=False, force_update=False, using=None,
             update_fields=None):
        if not self.numero:
            dados = Contrato.objects.all().order_by('numero')
            if dados:
                lista = []
                for n in dados:
                    lista.append(n.numero)
                self.numero = lista[-1]+1
                super(Contrato, self).save()
            else:
                self.numero = 1
                super(Contrato, self).save()
        else:
            super(Contrato, self).save()
class Situacao(models.Model):
    status = models.CharField(max_length=30)

    def __str__(self):
        return self.status

class Modalidade(models.Model):

    tipo = models.ForeignKey(Tipo, on_delete=models.CASCADE)
    numero = models.PositiveIntegerField(default=None, blank=True, null=True)
    processo = models.ForeignKey(Processo, on_delete=models.CASCADE, blank=True, null=True)
    contrato = models.ForeignKey(Contrato, on_delete=models.CASCADE, blank=True, null=True)
    objeto = models.TextField()
    situacao = models.ForeignKey(Situacao, on_delete=models.CASCADE)
    ano = models.PositiveIntegerField(default=now().year)
    criado_em = models.DateField(default=now())

    class Meta:
        verbose_name_plural = "Modalidades"
        ordering = ('tipo','ano','numero')
        unique_together = ('ano','tipo','numero')

    def __str__(self):
        return "{} - {}/{}".format(self.tipo, self.numero, self.ano)

    def save(self, force_insert=False, force_update=False, using=None,
             update_fields=None):
        if not self.numero:
            dados = Modalidade.objects.all().filter(ano=self.ano, tipo=self.tipo)
            if dados:
                lista = []
                for n in dados:
                    lista.append(n.numero)
                self.numero = lista[-1] + 1
                super(Modalidade, self).save()
            else:
                self.numero = 1
                super(Modalidade, self).save()
        else:
            super(Modalidade, self).save()