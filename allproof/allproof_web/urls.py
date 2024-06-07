from django.urls import path, re_path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('allproof_web', views.allproof_web, name='allproof_web'),
    #path('Allproof_web.gltf', views.gltf, name='gltf'),
    #path('visual_logic.js', views.visual, name='visual'),
    path('Allproof_web.bin', views.bin, name='bin'),
    path('path6864.png', views.png, name='png'),
    path('autoshop_01_1k.png', views.autoshop, name='autoshop'),
]
