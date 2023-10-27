# Las siguientes cuatro funciones son utilizadas para la creación de cuatro nuevas columnas en el df. 
# Entra un string y sale un valor booleano según la película contenga, o no, las características especiales definidas.

def trailer(x):
    x = x.lower()
    if 'trailer' in x:
        return True
    else:
        return False
    
def commentaries(x):
    x = x.lower()
    if 'commenta' in x:
        return True
    else:
        return False
    
def deleted(x):
    x = x.lower()
    if 'deleted' in x:
        return True
    else:
        return False
    
def behind(x):
    x = x.lower()
    if 'behind' in x:
        return True
    else:
        return False