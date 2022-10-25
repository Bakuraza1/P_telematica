from django.urls import path
from InOut_app import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.Welcome, name="welcome"),
    path('registro/', views.Registro, name="registro"),
    path('ingreso/', views.Ingreso, name="ingreso"),
    path('home/',   views.Home, name="home"),
    path('usuario/', views.Usuario, name="usuarios"),
    path('productos/', views.Productos, name="productos"),
    path('opciones/', views.Opciones, name="opciones"),
    path('main/', views.Main, name="main"),
    path('welcome/', views.Welcome, name="welcome"),
    path('logout/', views.logOut_request, name="logout"),
    path('agregar/', views.registroProducto, name="agregar"),
    path('eliminar/', views.EliminarItem, name="eliminar"),
    path('eliminar/<str:nombre>', views.eliminacionProducto, name="borrar"),
    path('actualizar/<str:nombre>', views.actualizar, name="actualizar"),
    path('actualizar/', views.modificar, name="modificar"),
    path('pind/', views.pind, name="pind"),
    path('pind/<str:id_obj>', views.pind, name="pind"),
]#+ static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)