from django import forms
from Menuapp.models import Empleado
from django.contrib.auth.forms import UserCreationForm

class Agregar(forms.Form):
    nombre=forms.CharField()
    descripcion=forms.CharField(widget=forms.Textarea, required=False, help_text='Campo no obligatorio')

class SignUpForm(UserCreationForm):
    pais = forms.CharField(required = False)
    id_slack = forms.CharField(required = False)
    class Meta:
        model = Empleado 
        fields = ('username', 'password1', 'password2', 'pais', 'id_slack')