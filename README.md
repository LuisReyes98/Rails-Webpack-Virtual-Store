# Tienda Virtual

Pagina para el control de compra, venta e inventario de una tienda

nombre de la gema en la pc de rogelio ```store```

Base de datos:
  -PostgreSQL

La pagina permitira a:
  - Vendedores registrar ventas
  - Usuarios Registrados , Hacer ordenes de compra que retiran en la tienda
  - Usuarios no regitrados , ver productos y cantidad disponible
  - Admin generar reportes de ventas en periodo de tiempo seleccionado


Notas:
Comando para correr el server:
```
foreman start -f Procfile.dev 
```

Comando para compilar assets:
```
RAILS_ENV=production NODE_ENV=production bundle exec rails assets:precompile
```

[Instrucciones de deploy de webpacker](https://github.com/rails/webpacker/blob/master/docs/deployment.md)

hacer deployment con deploy2 
```
heroku create shiny-webpacker-app
heroku addons:create heroku-postgresql:hobby-dev
git push heroku deploy2:master
```