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
Fueron creados un total de X tests, con la ayuda de Spec y SimpleCov. Se puede visualizar el porcentaje de cobertura del testing en la carpeta *coverage*, en el archivo *index.html*. Para correr en la consola, usar el siguiente comando:
 ```bash
 bundle exec rspec 
 ```