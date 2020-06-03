from django.urls import path, include
from Menuapp import views

urlpatterns = [
    path('',views.home),
    path('ver/',views.ver),
    path('agregar/',views.agregar),
    path('eliminar/',views.eliminar),
    path('modificar/',views.modificar),
    path('agregar_menu/',views.agregar_menu),
    path('elegir_menu/',views.elegir_menu),
    path('mostrar_menu/',views.mostrar_menu),
]
