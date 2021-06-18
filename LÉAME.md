# Utilidades IONEX
Aquí están unas utilidades MATLAB para trabajando con archivos IONEX.  Estas
funciones no tienen ningunas dependencias externas.  Usted puede encontrar un
enlace al estándar IONEX 1.1
[aquí](http://ftp.aiub.unibe.ch/ionex/draft/ionex11.pdf).

Manifiesto de funciones:
* **load_ionex** - cargar el contenido del archivo IONEX (solo se apoya IONEX
    versión 1.1) en una tabla MATLAB con las columnas: 'Latitud', 'Longitud',
    'Altura', y 'TEC' (Contenido Electrónico Total).  Actualmente no se controla
    errores o se verifica el archivo y un error ocurrirá si el archivo a
    'ruta_al_archivo' no se adhiere estrictamente al estándar IONEX 1.1.
