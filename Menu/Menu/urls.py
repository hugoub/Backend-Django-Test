"""Menu URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from users import views as users_views
from slack_comunicar import views as slack_views
from celery_test import views as celery_views


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('Menuapp.urls')),
    path('register/', users_views.register),
    path('login/', users_views.login),
    path('logout/', users_views.logout),
    path('listar_users/', users_views.listar_user),
    path('comunicar/',slack_views.comunicador),
    path('asincro',celery_views.celery_test)
]


