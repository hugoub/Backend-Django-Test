from django.db import models

# Create your models here.
class Almuerzo(models.Model):
    id = models.AutoField(primary_key = True)
    nombre = models.CharField(max_length = 50)
    descripcion = models.TextField()

class Postre(models.Model):
    id = models.AutoField(primary_key = True)
    nombre = models.CharField(max_length = 50)
    descripcion = models.TextField()

class Ensalada(models.Model):
    id = models.AutoField(primary_key = True)
    nombre = models.CharField(max_length = 50)
    descripcion = models.TextField()
