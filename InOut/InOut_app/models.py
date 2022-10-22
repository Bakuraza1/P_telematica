from distutils.command.upload import upload
from django.db import models

# Create your models here.

class Producto(models.Model):
    #Categoria = models.ForeignKey("Categoria", on_delete=models.CASCADE) 
    #Empresa = models.ForeignKey( "Empresa", on_delete=models.CASCADE)
    Nombre = models.CharField(max_length=20)
    Cantidad = models.IntegerField(default=0)
    Precio = models.DecimalField(max_digits=10, decimal_places=2, default= 0.00)
    Imagen = models.ImageField(default= 'pan.png', upload_to="images/")
    def disponible(self):
        return self.Cantidad > 0
    
    def __str__(self) -> str:
        return ("Nombre:%s, cantidad: %d, Precio: %d" % (self.Nombre, self.Cantidad, self.Precio))


class Usuario(models.Model):
    Nombre = models.CharField(max_length=60)
    Apellido = models.CharField(max_length=120)
    Usuario = models.CharField(max_length=120)
    Ciudad = models.CharField(max_length=20)
    Direccion = models.CharField(max_length=100)
    Correo = models.EmailField(max_length=100)
    Password = models.CharField(max_length=100)


class Comentario(models.Model):
    Comentario = models.CharField(max_length=150)
    Usuario = models.ForeignKey(
    "Usuario", on_delete=models.CASCADE)
    Producto = models.ForeignKey(
    "Producto", on_delete=models.CASCADE)
