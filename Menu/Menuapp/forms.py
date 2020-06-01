from django import forms
from Menuapp.models import Empleado
from django.contrib.auth.forms import UserCreationForm

class Agregar(forms.Form):
    nombre=forms.CharField()
    descripcion=forms.CharField(widget=forms.Textarea)

class AgregarEmpleado(forms.Form):
    pais = forms.CharField()
    whatsapp = forms.CharField()

class SignUpForm(UserCreationForm):
    class Meta:
        model = Empleado #this is the "YourCustomUser" that you imported at the top of the file  
        fields = ('username', 'password1', 'password2') #etc etc, other fields you want displayed on the form)