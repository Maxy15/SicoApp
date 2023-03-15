# SicoApp
 Aplicación web creada con Ruby On Rails (Ruby v3.1.0 - Rails v7.0.4.2), en donde se usó *Tailwind CSS* para los estilos y para la base de datos se usó Postgres. Para esto, es necesario contar con un archivo llamado *.env* con la siguiente información:

 ```bash
 DB_USER=myuser
 DB_PASSWORD=mypassword
 ```

 Además, para correr la aplicación, usar el siguiente comando en la terminal:
 ```bash
 ./bin/dev 
 ```

## Testing
Fueron creados un total de 7 tests (controlador Center y modelo User), con la ayuda de Spec y SimpleCov. Se puede visualizar el porcentaje de cobertura del testing en la carpeta *coverage*, en el archivo *index.html*. Para correr en la consola, usar el siguiente comando:
 ```bash
 bundle exec rspec 
 ```

## Aspectos generales
La aplicación inicia en la *landing page* que se encuentra en *centers_index_path*. Los usuarios deben registrarse e iniciar sesión para agendar una hora con alguno de los terapeutas disponibles en cada uno de los dos centros. En el registro, los usuarios deben ingresar su RUT, correo, teléfono y contraseña para acceder al portal. Luego, pueden agendar horas a través del form que está disponible desde un botón en el perfil. El form deja tomar sólo las horas disponibles por terapeuta por día. Cabe destacar que no pide la validación del RUT y del correo porque se valida antes en el registro de usuario. Por último, si el usuario quiere anular una hora, debe completar un form con su correo y los datos de la cita, para posteriormente confirma la anulación.

También, existe una opción para administrador, el cual debe ser un usuario con nombre *Admin SicoApp* que debe ser creado o registrado a través de las *seed*. Este tipo de usuario es el único que puede crear, editar y eliminar centros y terapeutas asociados a estos. Además, existe un archivo en la carpeta *Docs* con la información de la base de datos. 