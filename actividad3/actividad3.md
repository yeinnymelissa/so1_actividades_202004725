# Actividad 3  
#### Gestión de Permisos 
#### Facultad de Ingeniería  
#### Sistemas Operativos 1

#### Nombre y carnet 
- Yeinny Melissa Catalán de León    - 202004725  

Guatemala, Agosto 2023.  
___  

## Parte 1: Gestión de Usuarios  
___

### Creación de Usuarios: Crea tres usuarios llamados `usuario1`, `usuario2` y `usuario3`  

#### Comando
<pre><code>sudo useradd usuario1; sudo useradd usuario2; sudo useradd usuario3;
</code></pre>  

### Asignación de Contraseñas: Establece una nueva contraseñas para cada usuario creado  

#### Comando
<pre><code>sudo passwd usuario1;sudo passwd usuario2;sudo passwd usuario3;
</code></pre>  

#### Salida
<pre><code>[sudo] contraseña para yeinny: 
Nueva contraseña: 
Vuelva a escribir la nueva contraseña: 
passwd: contraseña actualizada correctamente
Nueva contraseña: 
Vuelva a escribir la nueva contraseña: 
passwd: contraseña actualizada correctamente
Nueva contraseña: 
Vuelva a escribir la nueva contraseña: 
passwd: contraseña actualizada correctamente
</code></pre>  

### Información de Usuarios: Muestra la información de `usuario1` usando el comando `id`  

#### Comando
<pre><code>id usuario1
</code></pre>  

#### Salida
<pre><code>uid=1001(usuario1) gid=1001(usuario1) grupos=1001(usuario1)
</code></pre>  

### Eliminación de Usuarios: Elimina `usuario3`, pero conserva su directorio principal  

#### Comando
<pre><code>sudo userdel usuario3
</code></pre>  

## Parte 2: Gestión de Grupos  
___ 

### Creación de Grupos: Crea dos grupos llamados `grupo1` y `grupo2`.  

#### Comando
<pre><code>sudo addgroup grupo1; sudo addgroup grupo2;  
</code></pre>  

#### Salida
<pre><code>Añadiendo el grupo `grupo1' (GID 1003) ...
Hecho.
Añadiendo el grupo `grupo2' (GID 1004) ...
Hecho.
</code></pre> 

### Agregar Usuarios a Grupos: Agrega `usuario1` a `grupo1` y `usuario2` a `grupo2`  

#### Comando
<pre><code>sudo adduser usuario1 grupo1; sudo adduser usuario2 grupo2;  
</code></pre>  

#### Salida
<pre><code>Añadiendo al usuario `usuario1' al grupo `grupo1' ...
Añadiendo al usuario usuario1 al grupo grupo1
Hecho.
Añadiendo al usuario `usuario2' al grupo `grupo2' ...
Añadiendo al usuario usuario2 al grupo grupo2
Hecho.
</code></pre>  

### Verificar Membresía: Verifica que los usuarios han sido agregados a los grupos utilizando el comando `groups`  

#### Comando
<pre><code>groups usuario1; groups usuario2;  
</code></pre>  

#### Salida
<pre><code>usuario1 : usuario1 grupo1
usuario2 : usuario2 grupo2
</code></pre> 

### Eliminar Grupo: Elimina `grupo2`  

#### Comando
<pre><code>sudo delgroup grupo2  
</code></pre>  

#### Salida
<pre><code>Eliminando al grupo `grupo2' ...
Hecho.
</code></pre> 

## Parte 3: Gestión de Permisos  
___ 

### Creación de Archivos y Directorios:
Como `usuario1`, crea un archivo llamado `archivo1.txt` en su directorio principal y escribe algo en él.
Crea un directorio llamado `directorio1` y dentro de ese directorio, un archivo llamado `archivo2.txt`.  

#### Comando
<pre><code>cat > archivo1.txt    
Yeinny Catalan
202004725
</code></pre>  
