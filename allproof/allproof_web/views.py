from django.shortcuts import render, redirect


def index(request):
    return render(request, 'allproof_web/templates/allproof_web/index.html')

def allproof_web(request):
    return render(request, 'allproof_web/templates/allproof_web/allproof_web.html')

def gltf(request):
    return redirect('/static/verge/Allproof_web.gltf')

def visual(request):
    return redirect('/static/verge/visual_logic.js')

def bin(request):
    return redirect('/static/verge/Allproof_web.bin')

def png(request):
    return redirect('/static/verge/path6864.png')

def autoshop(request):
    return redirect('/static/verge/autoshop_01_1k.png')