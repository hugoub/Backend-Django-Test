from django.shortcuts import render, HttpResponse
from django_slack import slack_message
import slack
from django.conf import settings

from Menuapp.models import Elegir_menu, Empleado, Menu
from django.utils import timezone
import uuid


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
    '''
    Se genera un uuid para cada empleado en Chile y se envia un mensaje privado a cada uno a traves de Slack
    Las id's de Slack de cada empleado estan almacenadas en la base de datos
    Es uuid es almacenado en una tabla para luego reconocer al empleado, este proceso se realiza todos los días
    '''
    empleados = Empleado.objects.filter(pais__exact='Chile') # Empleados que trabajan en Chile

    robot = slack.WebClient(settings.TOCKEN_SLACK)

    dia = timezone.localtime()
    fecha = '%s-%s-%s'%(dia.day,dia.month,dia.year)

    #lista = robot.users_list() 

    for em in empleados:
        #print(em.id_slack)
        uuid_user = uuid.uuid4()
        elegir = Elegir_menu(id_empleado = em, uuid = uuid_user)  
        elegir.save() 
        try:
            robot.chat_postMessage(channel = em.id_slack, text = 'Hola! <@%s>. Puedes seleccionar tu menú para hoy %s en el siguiente link http://localhost:8000/menu/%s/'%(em.id_slack,fecha,uuid_user))
        except:
            continue
    
    return HttpResponse('Hola')