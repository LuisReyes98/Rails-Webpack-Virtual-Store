.container-fluid
  .row
    .col-sm-4.admin__sidebar.pt-4.pb-4
      ul.list-group
        li.list-group-item
          a href="products.html" 
          h3 Productos
        li.list-group-item
          a href="orders.html" 
          h3 Órdenes
        li.list-group-item
          a href="users.html" 
          h3 Usuarios
        li.list-group-item
          a href="report.html" 
          h3 Reportes
    .col-sm-8
      .container-fluid
        .container
          form action="" 
            h1.h1.text-center Reportes
            .row.form-group
              label.h2 for="date"  Reporte desde:
              input#date.form-control name="date" type="date"
            button.btn.btn-primary Generar Reporte