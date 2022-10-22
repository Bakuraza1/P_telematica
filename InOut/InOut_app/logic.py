from .models import Usuario

def verificarUsuario(criterio, tipo = 'usuario'):
    query = False
    if tipo == 'usuario':
        query = Usuario.objects.filter(Usuario=criterio).exists()
    return query

def verificarCorreo(criterio, tipo = 'usuario'):
    query = False
    if tipo == 'usuario':
        query = Usuario.objects.filter(Correo=criterio).exists()
    return query
