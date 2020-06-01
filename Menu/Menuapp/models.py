from django.db import models
from django.contrib.auth.models import AbstractUser

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

class Empleado(AbstractUser):
    pais = models.CharField(max_length = 20)
    whatsapp = models.CharField(max_length = 20)

class Menu(models.Model):
    id = models.AutoField(primary_key = True)
    fecha_menu = models.DateTimeField()
    id_almuerzo = models.ForeignKey(Almuerzo, on_delete=models.CASCADE, blank=True)
    id_ensalada = models.ForeignKey(Ensalada, on_delete=models.CASCADE, blank=True)
    id_postre = models.ForeignKey(Postre, on_delete=models.CASCADE, blank=True)

class Elegir_menu(models.Model):
    id_menu = models.ForeignKey(Menu, on_delete=models.CASCADE)
    id_empleado = models.ForeignKey(Empleado, on_delete=models.CASCADE)





