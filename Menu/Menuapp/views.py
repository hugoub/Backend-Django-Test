from django.shortcuts import render, HttpResponse, redirect
from Menuapp.models import Postre, Almuerzo, Ensalada, Empleado, Menu, Elegir_menu
from Menuapp.forms import Agregar
from django.contrib.auth.decorators import login_required
import uuid
from django.utils import timezone

# Create your views here.
def home(request):
    '''
    Vista principal
    '''
    if request.user.is_staff:
        return render(request, 'home.html')
    else:
        return redirect('/home_usuario/')

def ver(request):
    '''
    Obtener los articulos para ser mostrados en ver.html
    '''
    if request.user.is_staff:
        if request.method=="POST":
            if request.POST['valor'] == 'postres':
                articulo = list(Postre.objects.all())
            elif request.POST['valor'] == 'almuerzos':
                articulo = list(Almuerzo.objects.all())
            elif request.POST['valor'] == 'ensaladas':
                articulo = list(Ensalada.objects.all())
            else:
                mensaje = 'Error'
            return render(request, 'ver.html',{'articulos':articulo, 'valor': request.POST['valor']})
        else:
            mensaje = 'No has introducido nada'
        return HttpResponse(mensaje)
    else:
        return redirect('/home_usuario/')

def agregar(request):
    '''
    Agregar platos a la base de datos
    '''
    if request.user.is_staff:
        if request.method=='POST' and 'valor' in request.POST: 
            articulo_form = Agregar()
            print('hola')
            return render(request,'agregar.html', {'form': articulo_form, 'agregar_tipo': request.POST['valor']})
        elif request.method=='POST':
            articulo_form = Agregar(request.POST)
        
            if articulo_form.is_valid():
                    infPostre = articulo_form.cleaned_data
                    if request.POST['tipo'] == 'postres':
                        postre_bd = Postre(nombre=infPostre['nombre'], descripcion =infPostre['descripcion'])
                    elif request.POST['tipo'] == 'almuerzos':
                        postre_bd = Almuerzo(nombre=infPostre['nombre'], descripcion =infPostre['descripcion']) 
                    elif request.POST['tipo'] == 'ensaladas':
                        postre_bd = Ensalada(nombre=infPostre['nombre'], descripcion =infPostre['descripcion'])
                    else:
                        return HttpResponse('Error, no se encuentra tipo de dato')              
                    
                    postre_bd.save()
            return render(request, 'finalizado.html', {'mensaje': 'Agregado Correctamente', 'tipo':request.POST['tipo']})
        else:
            return HttpResponse("faaffd")
    else:
        return redirect('/home_usuario/')

def eliminar(request):
    '''
    Eliminar platos de la base de datos
    '''
    if request.user.is_staff:
        if request.method=='POST' and 'valor' in request.POST:     
            if request.POST['valor'] == 'postres':
                articulo = list(Postre.objects.all())
            if request.POST['valor'] == 'almuerzos':
                articulo = list(Almuerzo.objects.all())
            if request.POST['valor'] == 'ensaladas':
                articulo = list(Ensalada.objects.all())
            return render(request, 'eliminar.html',{'articulos':articulo, 'agregar_tipo': request.POST['valor']})

        if request.method=='POST':
            if request.POST['tipo'] == 'postres':
                Postre.objects.filter(id__exact=request.POST['id_articulo']).delete()
            elif request.POST['tipo'] == 'almuerzos':
                Almuerzo.objects.filter(id__exact=request.POST['id_articulo']).delete()
            elif request.POST['tipo'] == 'ensaladas':
                Ensalada.objects.filter(id__exact=request.POST['id_articulo']).delete()
            mensaje = 'Se ha eliminado correctamente el plato con id %s de la tabla %s' %(request.POST['id_articulo'],request.POST['tipo'])
            return render(request,'finalizado.html',{'mensaje':mensaje})
        
        else:
            postre=list(Postre.objects.all())
            return render(request, 'eliminar_postre.html',{'articulos':postre})
    else:
        return redirect('/home_usuario/')

def modificar(request):
    '''
    Funcion para modificar platos almacenados en la base de datos
    '''
    if request.user.is_staff:
        if request.method=='POST' and 'valor' in request.POST:

            if request.POST['valor'] == 'postres':
                articulo = list(Postre.objects.all())
            if request.POST['valor'] == 'almuerzos':
                articulo = list(Almuerzo.objects.all())
            if request.POST['valor'] == 'ensaladas':
                articulo = list(Ensalada.objects.all())
            
            return render(request, 'modificar.html',{'articulos':articulo, 'agregar_tipo': request.POST['valor']})

        if request.method=='POST' and 'id_articulo' in request.POST:
            if request.POST['tipo'] == 'postres':
                articulo = Postre.objects.get(id__exact=request.POST['id_articulo'])
            if request.POST['tipo'] == 'almuerzos':
                articulo = Almuerzo.objects.get(id__exact=request.POST['id_articulo'])
            if request.POST['tipo'] == 'ensaladas':
                articulo = Ensalada.objects.get(id__exact=request.POST['id_articulo'])
            default_data = {'nombre': articulo.nombre, 'descripcion': articulo.descripcion }
            articulo_form = Agregar(default_data)

            return render(request,'editar.html', {"form":articulo_form, 'id_articulo':articulo.id, 'agregar_tipo': request.POST['tipo']} )

        elif request.method=="POST" and 'id_articulo' not in request.POST: 
            articulo_form = Agregar(request.POST)

            if articulo_form.is_valid():
                articulo_info = articulo_form.cleaned_data
                if request.POST['tipo'] == 'postres':
                    articulo_bd = Postre(id=request.POST['id_articulo_modificar'], nombre=articulo_info['nombre'], descripcion =articulo_info['descripcion'])
                if request.POST['tipo'] == 'almuerzos':
                    articulo_bd = Almuerzo(id=request.POST['id_articulo_modificar'], nombre=articulo_info['nombre'], descripcion =articulo_info['descripcion'])
                if request.POST['tipo'] == 'ensaladas':
                    articulo_bd = Ensalada(id=request.POST['id_articulo_modificar'],nombre=articulo_info['nombre'], descripcion =articulo_info['descripcion'])

                articulo_bd.save()

            return render(request, 'finalizado.html', {'mensaje': 'Modificado Correctamente'})
    else:
        return redirect('/home_usuario/')


def agregar_menu(request):
    if request.user.is_staff:
        if request.method=="POST":   
            almuerzo_m = Almuerzo.objects.get(id__exact = request.POST['id_almuerzo'] )
            if request.POST['id_ensalada'] != 'sin':
                ensalada_m = Ensalada.objects.get(id__exact = request.POST['id_ensalada'])
            else:
                ensalada_m = None
            if request.POST['id_postre'] != 'sin':
                postre_m = Postre.objects.get(id__exact = request.POST['id_postre'] )
            else:
                postre_m = None

            nuevo_menu = Menu(fecha_menu=request.POST['fecha'],id_almuerzo=almuerzo_m,id_ensalada=ensalada_m,id_postre=postre_m)
            nuevo_menu.save()
            return HttpResponse('Agregado')

        else:
            postres_list = list(Postre.objects.all())
            almuerzos_list = list(Almuerzo.objects.all())
            ensaladas_list = list(Ensalada.objects.all())
            return render(request, 'agregar_menu.html',{'postres_l':postres_list, 'almuerzos_l': almuerzos_list, 'ensaladas_l': ensaladas_list})
    else:
        return redirect('/home_usuario/')



def mostrar_menu(request):
    if request.user.is_staff:
        if request.method=="POST":   
            menus =  Menu.objects.filter(fecha_menu__contains=request.POST['fecha'])
            #return HttpResponse(menus[0].id_almuerzo.nombre)
            return render(request, 'ver_menu.html',{'menus':menus, 'fecha':request.POST['fecha']})
        else:
            return render(request,'mostrar_menu.html')
    else:
        return redirect('/home_usuario/')


def ver_menu_empleado(request):
    '''
    Muestra todos los pedidos de menu para un día de la semana
    '''
    if request.user.is_staff:
        dia = timezone.localtime()
        empleados = list(Empleado.objects.all())
        menus = list(Menu.objects.all())
        ids_menus = Menu.objects.filter(fecha_menu=dia.date()).values('id')    
        menus_elegidos = list(Elegir_menu.objects.filter(id_menu__in=ids_menus))

        return render(request,'ver_menu_empleado.html',{'menus_elegidos':menus_elegidos})
    else:
        return redirect('/home_usuario/')



def eliminar_menu(request):
    if request.user.is_staff:
        if request.method=="POST":  
            Menu.objects.filter(id__exact=request.POST['id_menu']).delete()
            return HttpResponse("Menu eliminado")
        else:
            menus = list(Menu.objects.all())
            return render(request,'eliminar_menu.html',{'menus':menus})
    else:
        return redirect('/home_usuario/')

def eliminar_usuarios(request):
    if request.user.is_staff:
        if request.method=="POST":  
            Empleado.objects.filter(id__exact=request.POST['id_empleado']).delete()
            return HttpResponse("Empleado eliminado")
        else:
            empleados = list(Empleado.objects.all())
            return render(request,'eliminar_usuarios.html',{'empleados':empleados})
    else:
        return redirect('/home_usuario/')        

def home_usuario(request):

    dia = timezone.localtime()
    empleados = list(Empleado.objects.all())
    menus = list(Menu.objects.all())
    ids_menus = Menu.objects.filter(fecha_menu=dia.date()).values('id')    
    menus_elegidos = list(Elegir_menu.objects.filter(id_menu__in=ids_menus, id_empleado = request.user.id))

    return render(request,'home_usuario.html',{'menus_elegidos':menus_elegidos, 'user':request.user})