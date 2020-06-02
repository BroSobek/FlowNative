from django.urls import path

from . import views

app_name = 'Deploy_Manager'
urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),
]
