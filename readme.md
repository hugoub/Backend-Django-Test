# Backend #

Para entrar al menu de gestión principal hay que loguearse como un usuario con provilegios de staff.

Como supuesto se consideró que se tiene en la base de datos el id de slack de cada uno de los empleados. Ya que el robot manda un mensaje privado con el link del menú a cada usuario. También era posible obtener todos los usuarios de un canal específico de Slack, pero se tendrían que haber linkeado a su respectivo usuario de la base de datos.

# Requerimientos

Se utlizó las siguientes librerias ejecutadas en Python 3.7.5.

```
celery                  4.4.3
django-slack-app        1.0.40
``` 

Además de Redis en su versión 3.2.1 para ejecutar operaciones asincrónicas.

## **Hugo Ubilla**
