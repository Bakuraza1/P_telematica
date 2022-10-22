from math import prod
from django.shortcuts import render, redirect, HttpResponse
from .models import Producto, Usuario, Comentario
from django.http import JsonResponse
import datetime
from InOut_app import logic, models
from collections import OrderedDict
from django.urls import reverse
from .forms import productoForm, Deleteform, actualizarProducto
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages

login_check = False
current_product = ''
current_user = ''

#tipo = "mes"
#fecha = 'nulo'
#mes = 6
meses={
    1: 'Enero',
    2: 'Febrero',
    3: 'Marzo',
    4: 'Abril',
    5: 'Mayo',
    6: 'Junio',
    7: 'Julio',
    8: 'Agosto',
    9: 'Septiembre',
    10: 'Octubre',
    11: 'Noviembre',
    12: 'Diciembre',

}


    


def Registro(request):
    if request.method == 'POST':
        nombre = request.POST['nombre']
        apellido = request.POST['apellidos']
        usuario = request.POST['usuario']
        ciudad = request.POST['ciudad']
        direccion = request.POST['direccion']
        correo = request.POST['correo']
        clave = request.POST['clave']

        if logic.verificarUsuario(usuario):
            messages.info(request,"Usuario ya se encuentra registrado, por favor selecciona otro ó inicia sesión")
        elif logic.verificarCorreo(correo):
            messages.info(request,"Correo ya se encuentra registrado, por favor selecciona otro ó inicia sesión")
        else:
            agregar = models.Usuario(Nombre = nombre, Apellido= apellido, Usuario=usuario, Ciudad = ciudad, Direccion = direccion, Correo=correo, Password=clave)
            agregar.save()
            return Home(request)

    return render(request, "registro.html")

def pind(request, id_obj):
    global login_check
    global current_product
    if login_check==False:
        return redirect('Welcome')
    p = Producto.objects.filter(id=id_obj)
    current_product = (p[0])
    comentarios =  list(Comentario.objects.all())
    names = []
    for i in comentarios:
        names.append([((models.Usuario.objects.get(id= i.Usuario_id)).Usuario),i.Comentario])
    print(names)
    if request.method == "POST":
        new_comment = models.Comentario(Usuario=current_user, Producto = current_product, Comentario=request.POST['coment'])
        new_comment.save()
        return redirect(pind, id_obj)
    return render(request, "pind.html", {'producto': p[0], 'comentarios': names})

def Ingreso(request):
    global login_check
    global current_user
    if login_check==True:
        return redirect('Productos')

    if request.method == "POST":
        
        usuario = request.POST['usuario']
        clave = request.POST['clave']

        try:
            informacion = models.Usuario.objects.get(Usuario= usuario, Password=clave)
            current_user = informacion
            login_check = True
            return redirect('Productos')

        except models.Usuario.DoesNotExist as e:
            messages.info(request, "Correo y/o contraseña incorrectos")

    return render(request, "Ingreso.html")


def Home(request):
    global login_check
    if login_check==False:
        return redirect('Welcome')
    productos =  Producto.objects
    return render(request, "Home.html", {"productos":productos})


def Usuario(request):
    global login_check
    if login_check==False:
        return redirect('Welcome')
    return render(request, "Usuario.html")


def Productos(request):
    global login_check
    if login_check==False:
        return redirect('Welcome')
    productos =  Producto.objects
    return render(request, "Productos.html", {"productos":productos})


def Opciones(request):
    global login_check
    if login_check==False:
        return redirect('Welcome')
    return render(request, "Opciones.html")

def Main(request):
    global login_check
    if login_check==False:
        return redirect('Welcome')
    return render(request, "Main.html")


def Welcome(request):

    return render(request, "Welcome.html")


def get_data(request):
    data = {"sales":100,
            "customers":10,
    }
    return JsonResponse(data)


def registroProducto(request):
    global login_check
    if login_check==False:
        return redirect('Welcome')
    form=productoForm()
    context={'form':form}
    if request.method == 'POST':
        form=productoForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('Productos')
    return render(request, 'agregar.html', context)


def EliminarItem(request):
    global login_check
    if login_check==False:
        return redirect('Welcome')
    form=Deleteform()
    context={'form':form}
    if request.method == 'POST':
        form=Deleteform(request.POST)
        if form.is_valid():
            nombre= form.cleaned_data.get("Nombre")
            return redirect(reverse('borrar', kwargs={"nombre": nombre}))
    return render(request, 'borrar2.html', context)


def modificar(request):
    global login_check
    if login_check==False:
        return redirect('Welcome')
    form=Deleteform()
    context={'form':form}
    if request.method == 'POST':
        form=Deleteform(request.POST)
        if form.is_valid():
            nombre= form.cleaned_data.get("Nombre")
            return redirect(reverse('actualizar', kwargs={"nombre": nombre}))
    return render(request, 'modificar.html', context)


def actualizar(request, nombre):
    global login_check
    if login_check==False:
        return redirect('Welcome')
    try:
        productoactualizar = Producto.objects.get(Nombre=nombre)
    except:
        return redirect('modificar')
    if request.method == "POST":
        nombre = request.POST["producto"]
        cantidad = request.POST["cantidad"]
        actualizarProducto(nombre,cantidad)
        return redirect('Productos')
    context={'item':productoactualizar}
    return render(request, 'actualizar.html', context)



def eliminacionProducto(request, nombre):
    global login_check
    if login_check==False:
        return redirect('Welcome')
    try:
        productoBorrar=Producto.objects.get(Nombre=nombre)
    except:
        return redirect('eliminar')
    if request.method == "POST":
        productoBorrar.delete()
        return redirect('Productos')
    context={'item':productoBorrar}
    return render(request, 'borrar.html', context)


def logOut_request(request):
    global login_check
    login_check = False
    return redirect("Welcome")

