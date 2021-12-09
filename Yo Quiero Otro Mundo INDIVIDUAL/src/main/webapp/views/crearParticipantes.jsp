<%--
  Created by IntelliJ IDEA.
  User: Victor Retamal
  Date: 28-11-2021
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Crear Participante</title>

    <!-- ESTILOS - BOOTSTRAP - BOTON CAMBIO COLOR-->

    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/main.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<div class="container">
    <header class="row banner">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
            <h1>CREACION DE PARTICIPANTES</h1>
        </div>
    </header>

    <div class="row menu">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">

            <nav id="nav-3">

                <a class="link-3" href="Home">Home</a>
                <a class="link-3" href="Contenido">Contenido</a>
                <a class="link-3" href="CrearParticipantes">Crear Participantes</a>
                <a class="link-3" href="ListarParticipantes">Listar Participantes</a>
                <a class="link-3" href="Tablas">Tablas</a>

                <!-- CAMBIAR COLOR DE FONDO-->
                <button onclick="generarNuevoColor()">Cambiar Fondo</button>
            </nav>

        </div>
    </div>
</div>

<div class=container>
    <form action="CrearParticipantes" method="post">

        <div class="row">
            <div class="col-md-6">
                <label>Nombre</label>
                <input type="text" name="nombre" class="form-control" placeholder="">

            </div>
            <div class="col-md-6">
                <label>Apellido</label>
                <input type="text" name="apellido" class="form-control" placeholder="">
            </div>


            <div class="col-md-6">
                <label>Rut</label>
                <input type="text" name="rut" class="form-control" placeholder="">
            </div>
            <div class="col-md-6">
                <label>Dirección</label>
                <input type="text" name="direccion" class="form-control" placeholder="">
            </div>


            <div class="col-md-12">
                <label>Teléfono</label>
                <input type="text" name="telefono" class="form-control" placeholder="">
            </div>
        </div>
        <button type="submit" name="submit" class="btn btn-primary">Crear Participante</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>

</body>
</html>
