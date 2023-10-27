# Las siguientes cuatro funciones son utilizadas para la creación de cuatro nuevas columnas en el df. 
# Entra un string y sale un valor booleano según la película contenga, o no, las características especiales definidas.

def trailer(x):
    x = x.lower()
    if 'trailer' in x:
        return 1
    else:
        return 0
    
def commentaries(x):
    x = x.lower()
    if 'commenta' in x:
        return 1
    else:
        return 0
    
def deleted(x):
    x = x.lower()
    if 'deleted' in x:
        return 1
    else:
        return 0
    
def behind(x):
    x = x.lower()
    if 'behind' in x:
        return 1
    else:
        return 0

# La siguiente función recive un string, el cual necesitamos acortar. Para ello convertimos la frase a una lista.
# A continuación retiramos el excedente no deseado y reunimos el string. Devolvemos una frasee más corta.

def size(x):
    x = x.split()
    x = x[1:9]
    x = " ".join(x)
    return x