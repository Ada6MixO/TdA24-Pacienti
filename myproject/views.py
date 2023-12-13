from django.http import JsonResponse
from django.shortcuts import render

def api_view(request):
    data = {"secret": "The cake is a lie"}
    return JsonResponse(data)

def index(request):
    return render(request, 'index.html')