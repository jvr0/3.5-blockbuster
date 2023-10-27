# La siguiente función es utilizada para la obtención del año, mes y día de las fechas proporcionadas. 
# Buscamos con regex patrones de 4, 2 y 2 números para el año, mes y día, correspondientemente.
# En la función entra un string y saldrán 3 valores de return según cual sea la fecha introducida.speciales definidas.
import re

def date(x):

    pattern = r'(\d{4})-(\d{2})-(\d{2})'

    match = re.search(pattern, x)

    if match:
        year = match.group(1)
        month = match.group(2)
        day = match.group(3)
        return year, month, day
    else:
        return 0,0,0