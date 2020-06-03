from django.shortcuts import render, redirect, HttpResponse
from django.contrib.auth import logout as do_logout
from django.contrib.auth import authenticate
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import login as do_login
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import get_user_model
from Menuapp.forms import SignUpForm
from Menuapp.models import Empleado

def welcome(request):
    if request.user.is_authenticated:
        return render(request, "users/welcome.html")
    return redirect('/login')
    
def register(request):
    form = SignUpForm()
    if request.method == "POST":
        form = SignUpForm(data=request.POST)
        if form.is_valid():
            user = form.save()
            if user is not None:
                return render(request,'users/registrado.html')

    form.fields['username'].help_text = '*'
    form.fields['password1'].help_text = '*'
    form.fields['password2'].help_text = '*'
    return render(request, "users/register.html", {'form': form})

def login(request):
    form = AuthenticationForm()
    if request.method == "POST":
        form = AuthenticationForm(data=request.POST)
        if form.is_valid():
            username = form.cleaned_data['username']
            password = form.cleaned_data['password']

            user = authenticate(username=username, password=password)

            if user is not None:
                do_login(request, user)
                return redirect('/')

    return render(request, "users/login.html", {'form': form})

def logout(request):
    do_logout(request)
    return redirect('/login')

def listar_user(request):
    '''
    Obtener los empleados en una lista
    '''
    empleados = list(Empleado.objects.all())
    return render(request, 'users/listar_users.html',{'empleados':empleados})
