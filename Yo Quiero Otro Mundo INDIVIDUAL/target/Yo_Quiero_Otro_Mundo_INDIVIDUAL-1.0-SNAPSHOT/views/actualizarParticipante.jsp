<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Victor Retamal
  Date: 05-12-2021
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Actualizar Participante</title>

    <!-- ESTILOS - BOOTSTRAP - BOTON CAMBIO COLOR-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/main.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>

<div class="container">
    <header class="row banner">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
            <h1>¿COMO AYUDAR AL MEDIO AMBIENTE?</h1>
        </div>
    </header>

    <div class="row menu">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
            <!-- CAMBIAR COLOR DE FONDO -->
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

<div class="container">
    <h2>Actualizar Capacitación</h2> <br>
    <form class="row g-3" action="ActualizarParticipanteUpdate" method="post">
        <c:forEach var="p" items="${parti}">
            <div class="col-md-4">
                <label class="form-label">ID:</label>
                <input class="form-control" value="${p.getId()}" type="number" name="id"  readonly="readonly" />
            </div>

            <div class="col-md-4">
                <label class="form-label">Nombre:</label>
                <input class="form-control" value="${p.getNombre()}" type="text" name="nombre" />
            </div>

            <div class="col-md-4">
                <label class="form-label">Apellido:</label>
                <input class="form-control" value="${p.getApellido()}" type="text" name="apellido" />
            </div>

            <div class="col-md-4">
                <label class="form-label">Rut:</label>
                <input class="form-control"  value="${p.getRut()}"type="text" name="rut" />
            </div>

            <div class="col-md-4">
                <label class="form-label">Direccion:</label>
                <input class="form-control" value="${p.getDireccion()}" type="text" name="direccion" />
            </div>

            <div class="col-md-4">
                <label class="form-label">Telefono:</label>
                <input class="form-control" value="${p.getTelefono()}" type="text" name="telefono" />
            </div>

            <div class="col-md-1">
                <input class="btn btn-warning" type="submit" name="send" value="Actualizar" />
            </div>
        </c:forEach>
    </form>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
</body>
</html>