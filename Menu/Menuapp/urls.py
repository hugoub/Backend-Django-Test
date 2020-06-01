from django.urls import path, include
from Menuapp import views

urlpatterns = [
    path('',views.home),
    path('ver/',views.ver),
    path('agregar/',views.agregar),
    path('eliminar/',views.eliminar),
    path('modificar/',views.modificar)
]
