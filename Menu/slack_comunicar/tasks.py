from __future__ import absolute_import, unicode_literals
from celery import shared_task
from Menuapp.models import Empleado, Elegir_menu
from django.utils import timezone
from django.conf import settings
import uuid
import slack

@shared_task
def enviar_links():
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