# Create your views here.
from django.shortcuts import render, HttpResponse
from django.utils import timezone
import pytz as tz
import datetime

# Create your views here.
def celery_test(request):

    
    now2 = datetime.datetime.now()

    now = timezone.localtime()
    
    return HttpResponse(now)