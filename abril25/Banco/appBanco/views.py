from django.shortcuts import render
from appBanco.models import cliente

def principal(request):
    listaC= cliente.objects.all()
    return render(request, "index.html",{"cliente": listaC})