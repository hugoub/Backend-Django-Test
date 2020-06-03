from django.urls import path, include
from Menuapp import views
from slack_comunicar import views as slack_views

urlpatterns = [
    path('',views.home),
    path('ver/',views.ver),
    path('agregar/',views.agregar),
    path('eliminar/',views.eliminar),
    path('modificar/',views.modificar),
    path('agregar_menu/',views.agregar_menu),
    path('elegir_menu/',slack_views.comunicador),
    path('mostrar_menu/',views.mostrar_menu),
    path('menu/<uuid:empleado_uuid>/',slack_views.comunicador),
    path('generar_links/',slack_views.generador_de_links),
]
