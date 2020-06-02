from django.shortcuts import render
from django.http import HttpResponse
from django.views import generic
from django.template import loader

# Create your views here.

class IndexView(generic.ListView):
    template_name = 'DeployManager/index.html'

    def get_queryset(self):
        return 0