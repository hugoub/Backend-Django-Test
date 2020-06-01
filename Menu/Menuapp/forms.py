from django import forms

class Agregar(forms.Form):
    nombre=forms.CharField()
    descripcion=forms.CharField(widget=forms.Textarea)