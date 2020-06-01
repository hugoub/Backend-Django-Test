from django.shortcuts import render, HttpResponse
from Menuapp.models import Postre, Almuerzo, Ensalada
from Menuapp.forms import Agregar

# Create your views here.

def home(request):

    return render(request, 'home.html')

def ver(request):

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


def agregar(request):

    if request.method=='POST' and 'valor' in request.POST: 
        articulo_form = Agregar()
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

        return render(request, 'finalizado.html', {'mensaje': 'Agregado Correctamente'})

def eliminar(request):

    if request.method=='POST' and 'valor' in request.POST:
        
        if request.POST['valor'] == 'postres':
            articulo = list(Postre.objects.all())

        if request.POST['valor'] == 'almuerzos':
            articulo = list(Almuerzo.objects.all())

        if request.POST['valor'] == 'ensaladas':
            articulo = list(Ensalada.objects.all())

        return render(request, 'eliminar.html',{'articulos':articulo, 'agregar_tipo': request.POST['valor']})

    if request.method=="POST":

        if request.POST['tipo'] == 'postres':
            Postre.objects.filter(id__exact=request.POST['id_articulo']).delete()

        elif request.POST['tipo'] == 'almuerzos':
            Almuerzo.objects.filter(id__exact=request.POST['id_articulo']).delete()

        elif request.POST['tipo'] == 'ensaladas':
            Ensalada.objects.filter(id__exact=request.POST['id_articulo']).delete()

        return HttpResponse('Se ha eliminar %r correctamente' %request.POST['id_articulo'])
    else:
        postre=list(Postre.objects.all())   #nombre__icontains es como un like
        return render(request, 'eliminar_postre.html',{'articulos':postre})



def modificar(request):
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

        return render(request,'editar.html', {"form":articulo_form,'id_articulo':articulo.id,'agregar_tipo': request.POST['tipo']} )


    elif request.method=="POST" and 'id_articulo' not in request.POST: 

        articulo_form = Agregar(request.POST)

        if articulo_form.is_valid():

            articulo_info = articulo_form.cleaned_data

            if request.POST['tipo'] == 'postres':
                articulo_bd = Postre(id=request.POST['id_articulo_modificar'],nombre=articulo_info['nombre'], descripcion =articulo_info['descripcion'])

            if request.POST['tipo'] == 'almuerzos':
                articulo_bd = Almuerzo(id=request.POST['id_articulo_modificar'],nombre=articulo_info['nombre'], descripcion =articulo_info['descripcion'])

            if request.POST['tipo'] == 'ensaladas':
                articulo_bd = Ensalada(id=request.POST['id_articulo_modificar'],nombre=articulo_info['nombre'], descripcion =articulo_info['descripcion'])

            articulo_bd.save()

        return render(request, 'finalizado.html', {'mensaje': 'Modificado Correctamente'})
    
