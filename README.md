# api_prueba_tecnica

Este Web Service esta alojadodo en un servidor de prueba es posible que presente algunos inconvenientes por este motivo

La URL para acceder es la siguiente
https://api_prueba_tecnica.000webhostapp.com/post.php


PARA REALIZAR PRUEBAS DE FORMA LOCAL ES NECESARIO: 

Lo primero es descargar WampServer instalarlo e iniciarlo

1.- Crear la base de datos dentro de PhpMyAdmin iniciarlo desde el panel de control de WampServer(Adjunto el archivo .sql para importar)
El nombre de la base de datos es 'blogbd'
Nota: Verificar los parámetros de la conexión en el archivo "config.php"

    'host' => 'localhost',
    'username' => 'root',
    'password' => '',
    'db' => 'blogbd' //Nombre de la base de datos


2.- Una vez creada la base de datos copiar los 3 archivos del git del WebService a la siguiente ruta C:\wamp64\www o la ruta donde se instaló WampServer
Es importante que estén los 3 archivos en la carpeta "www"

3.-Accedemos a ese directorio a través de de nuestro navegador o postman mediante la url http://localhost/post.php y nos desplegara los registros de la base de datos
o acceder al index con http://localhost/ (Para realizar post es necesario el uso de postman)
