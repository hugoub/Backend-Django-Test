from django.shortcuts import render, HttpResponse
from django_slack import slack_message
import slack
from django.conf import settings
from Menuapp.models import Elegir_menu, Empleado, Menu
from django.utils import timezone
import uuid
from slack_comunicar.tasks import enviar_links


# Create your views here.
def comunicador(request, empleado_uuid):
    '''
    Cambiar la variable hora_final para identificar hasta que hora se puede seleccionar el menu
    '''
    hora_final = 18
    dia = timezone.localtime()
    elegir_m = Elegir_menu.objects.filter(uuid = empleado_uuid)
    menu_hoy = Menu.objects.filter(fecha_menu__contains = dia.date())

    if dia.hour < hora_final and menu_hoy[0].fecha_menu.date() == dia.date():
        if request.method=="POST":
            menu_seleccionado = Menu.objects.filter(id__exact=request.POST['id_menu'])
            elegir_m = Elegir_menu.objects.filter(uuid__exact = empleado_uuid).update(id_menu=menu_seleccionado[0].id, cambios=request.POST['texto'])

            return HttpResponse('Menu seleccionado')

        else:
            return render(request, 'elegir_menu.html',{'menus':menu_hoy, 'fecha':dia.date(), 'user':elegir_m[0].id_empleado, 'uuid':empleado_uuid})
    else:
        return HttpResponse('Intente de nuevo mañana')


def generador_de_links(request):
    generar = enviar_links.delay()
    generar.get()

    return HttpResponse('Link Generados')
