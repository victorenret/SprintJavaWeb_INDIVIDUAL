<%--
  Created by IntelliJ IDEA.
  User: Victor Retamal
  Date: 26-11-2021
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Inicio</title>

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
            <h1>DESTRUCCIÓN DEL MEDIO AMBIENTE</h1>
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

    <!-- FILA PARA BANNER -->
    <div class="container-portada">
    </div>
    <!-- FIN DEL BANNER EN MOVIMIENTO -->

    <div>
        <div class="row">
            <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4 imagenperfil">
                <h2>Imagen Perfil
                    <hr color="black"><br>
                </h2>
                <img src="${pageContext.request.contextPath}/img/perfil.JPG" class="img-fluid efect1" alt="Responsive image">
            </div>
            <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4 datospersonales">
                <article>
                    <h2>Datos Personales</h2>
                    <hr color="black">
                    <p>Nombre: Victor Retamal</p>

                    <p>Telefono: 971930039</p>
                    <p>Correo Electrónico: victorenret@gmail.com</p>

                    <!-- <img src="./img/facebook.png" alt="" class="iconface"> -->
                    <a href="https://www.facebook.com/"><img src="${pageContext.request.contextPath}/img/facebook.png" class="iconface" alt="logo facebook"></a>


                </article>
            </div>
            <div class="col-12 col-sm-0 col-md-0 col-lg-4 col-xl-4 reseñapersonal">
                <article>
                    <h2>Mi Reseña Personal</h2>
                    <hr color="black">
                    <p>Mi nombre es Victor. tengo 30 años, me considero una persona tranquila, no me gusta salir
                        mucho, solo a lugares acompañado con mi familia. Me gusta el entorno familiar.
                    </p>

                </article>

            </div>
        </div>

        <div class="row">
            <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 misprincipios">
                <article>
                    <h2>Mis Principios</h2>
                    <hr color="black">
                    <p>Respetuoso - Tolerante - Honesto</p>

                    <img src="${pageContext.request.contextPath}/img/principios.JPG" class="img-fluid efect2" alt="Responsive image">

                </article>
            </div>
            <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 misgustos">
                <article>
                    <h2>Mis Gustos</h2>
                    <hr color="black">
                    <h3>Peliculas</h3>
                    <p>Titanes del Pacifico</p>
                    <p>Avatar</p>
                    <p>Godzilla vs Kong</p>
                    <br>
                    <h3>Deportes</h3>
                    <p>Futbol</p>
                    <p>Tenis de Mesa</p>
                    <p></p>
                </article>
            </div>
        </div>
        <footer class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 piedepagina">
                <h5>Desarrollo de Aplicaciones Web con Java - Santiago de Chile - San Joaquin</h5>
            </div>
        </footer>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

<!-- Alert Suite -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="../js/alerta.js"></script>

</body>
</html>
