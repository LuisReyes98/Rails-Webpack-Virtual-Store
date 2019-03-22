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
RAILS_ENV=production bundle exec rails assets:precompile
```