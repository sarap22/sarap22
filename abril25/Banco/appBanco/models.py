from django.db import models

# Create your models here.
class cliente(models.Model):
    documento=models.TextField(max_length=30)
    nombre=models.TextField(max_length=30)
    apellido=models.TextField(max_length=30)
    correo=models.TextField(max_length=30)
    celular=models.TextField(max_length=30)