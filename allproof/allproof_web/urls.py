from django.urls import path, re_path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('allproof_web', views.allproof_web, name='allproof_web'),
    path('Allproof_web.gltf', views.gltf, name='gltf'),
]
