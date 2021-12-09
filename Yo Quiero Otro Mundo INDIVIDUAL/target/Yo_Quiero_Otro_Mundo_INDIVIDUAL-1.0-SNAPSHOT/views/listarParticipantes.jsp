<%--
  Created by IntelliJ IDEA.
  User: Victor Retamal
  Date: 27-11-2021
  Time: 23:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@page import="model.DAO.ParticipanteDAOImpl"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>

<html>
<head>
    <title>Listado Participantes</title>

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
            <h1>LISTADO DE PARTICIPANTES</h1>
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
<table class = "table">
    <thead class = "table-info">
    <tr>
        <td>ID</td>
        <td>NOMBRE</td>
        <td>APELLIDO</td>
        <td>RUT</td>
        <td>DIRECCION</td>
        <td>TELEFONO</td>
        <td>ACCIONES</td>
    </tr>
    </thead>

    <tbody>
    <jsp:useBean id="part" scope="request" type="java.util.List"/>
    <p:forEach var="part" items="${part}">
        <tr>
            <td><p:out value="${part.getId()}"/></td>
            <td><p:out value="${part.getNombre()}"/></td>
            <td><p:out value="${part.getApellido()}"/></td>
            <td><p:out value="${part.getRut()}"/></td>
            <td><p:out value="${part.getDireccion()}"/></td>
            <td><p:out value="${part.getTelefono()}"/></td>
            <td>
                <div class="row g-3">
                    <form class="col-md-4" action="EliminarParticipante" method="post">
                        <button type="submit" class="btn btn-danger" name="id" value="${part.getId()}">Eliminar</button>
                    </form>
                    <form class="col-md-3" action="ActualizarParticipante" method="post">
                        <input name="tipoUsuario" value="administrativo" style="display: none;">
                        <button type="submit"
                                class="btn btn-warning" name="id" value="${part.getId()}">Actualizar</button>
                    </form>
                </div>
            </td>
        </tr>
    </p:forEach>
    </tbody>

</table>
</div>
</body>
</html>
