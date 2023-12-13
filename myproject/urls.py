from django.contrib import admin
from django.urls import path
from .views import api_view
from .views import index

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', index, name='index'),
    path('api/', api_view, name='api_view'),
]
