from django.http import JsonResponse
from django.shortcuts import render

def lecturer_view(request):
    return render(request, 'index.html')

def index(request):
    return render(request, 'index.html')
