from django.shortcuts import render, redirect


def index(request):
    return render(request, 'allproof_web/templates/allproof_web/index.html')

def allproof_web(request):
    return render(request, 'allproof_web/templates/allproof_web/allproof_web.html')