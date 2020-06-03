from django.shortcuts import render, HttpResponse
from django_slack import slack_message
import slack
from django.conf import settings

# Create your views here.
def comunicador(request):


    robot = slack.WebClient(settings.TOCKEN_SLACK)


    lista = robot.users_list()
    
    '''
    for i in lista['members']:
        print(i['id'])
        robot.chat_postMessage(channel='#equipo', text='hola')
    '''

    robot.chat_postMessage(channel='U01476YGAQ6', text='hola <@U01476YGAQ6>')
    #robot.chat_postMessage(channel='#equipo', text='hola')


    return HttpResponse(len(lista['members'][1]['id']))