from django.db import models

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