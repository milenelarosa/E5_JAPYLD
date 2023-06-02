<%@ page import="com.example.e5_japyld.models.beans.PerfilUsuario" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% ArrayList<PerfilUsuario> detallesPerfiles = (ArrayList<PerfilUsuario>) request.getAttribute("detallesPerfiles"); %>
<% ArrayList<PerfilUsuario> listaJuegosVendidos = (ArrayList<PerfilUsuario>) request.getAttribute("listaJuegosVendidos"); %>
<% ArrayList<PerfilUsuario> listaJuegosComprados = (ArrayList<PerfilUsuario>) request.getAttribute("listaJuegosComprados"); %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Perfil Usuario</title>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
              crossorigin="anonymous">

        <title>Edición de cuadro de texto</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <style>
            /* Estilos personalizados */
            .custom-textbox {
                border: 2px solid #ffffff;
                border-radius: 10px;
                padding: 10px;
                font-size: 18px;
                color: #333;
                background-color: #F1F7F6;
                outline: none;
            }

            .custom-textbox:focus {
                border-color: #29B6A5;
                box-shadow: 0 0 0 3px rgba(41, 182, 165, 0.2);
            }
        </style>

        <title>Gráfico de Barras con Bootstrap 4</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

        <!-- Custom fonts for this template-->
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
                href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
                rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">


    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="adminInicio.html">
                            <div class="sidebar-brand-icon rotate-n-15">
                                <i class="fas fa-laugh-wink"></i>
                            </div>
                            <div class="sidebar-brand-text mx-3">JAPYLD</div>
                        </a>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <ul class="navbar-nav ms-auto me-5 my-3 my-lg-0">
                            <li class="nav-link me-lg-3"></li>
                        </ul>


                        <div class="container center-h center-h">

                            <button class="btn btn-primary btn-block rounded-lg px-4 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal" onclick="window.location.href='tables_manager_usuarios.html'">
                            <span class="d-flex align-items-center justify-content-center">
                                <i class="bi-chat-text-fill me-2"></i>
                            <span class="medium">USUARIOS</span>
                            </span>
                            </button>

                            <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                                <li class="nav-link me-lg-3"></li>
                            </ul>

                            <button class="btn btn-primary btn-block rounded-lg px-4 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal" onclick=window.location.href="<%=request.getContextPath()%>/JuegosMenosVendidosServlet">
                        <span class="d-flex align-items-center justify-content-center">
                            <i class="bi-chat-text-fill me-2"></i>
                            <span class="medium">   JUEGOS   </span>
                        </span>
                            </button>

                            <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                                <li class="nav-link me-lg-3"></li>
                            </ul>

                            <button class="btn btn-primary btn-block rounded-lg px-4 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal" onclick="window.location.href='tables_manager_administradores.html'">
                        <span class="d-flex align-items-center justify-content-center">
                            <i class="bi-chat-text-fill me-2"></i>
                            <span class="medium">   ADMINISTRADORES   </span>
                        </span>
                            </button>

                            <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                                <li class="nav-link me-lg-3"></li>
                            </ul>

                        </div>
                    </nav>

                    <!-- Begin Page Content -->

                    <div id="layoutSidenav_content">
                        <main>
                            <!-- Main page content-->
                            <div class="container-xl px-4 mt-4">
                                <div class="col-12 col-xl-auto mb-3">
                                    <a class="btn btn-sm btn-light text-primary" href="<%=request.getContextPath()%>/UsuariosModuloServlet">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-left me-1"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg>
                                        Volver
                                    </a>
                                </div>


                                <div class="row">
                                    <div class="col-xl-4">
                                        <!-- Profile picture card-->
                                        <div class="card mb-4 mb-xl-0">
                                            <div class="card-body text-center">
                                                <!-- Profile picture image-->
                                                <img class="img-account-profile rounded-circle mb-2" src="assets/img/profile-1.png" alt="">
                                            </div>
                                            <br>
                                        </div>
                                    </div>
                                    <div class="col-xl-8">
                                        <!-- Account details card-->
                                        <div class="card mb-4">
                                            <div class="card-header m-0 font-weight-bold text-primary"><u>Descargar Perfil</u></div>

                                            <div class="container">
                                                <br>
                                                <h6 class="text-primary" style="color:#31a290;">INFORMACIÓN DEL USUARIO</h6>
                                                <div class="d-flex">
                                                    <div id="texto-editable" contenteditable="false" class="flex-grow-1 pr-3 custom-textbox">

                                                        <% for (PerfilUsuario profile: detallesPerfiles){ %>
                                                        <h5><b> Nombre: </b> <%=profile.getNombre() + " " + profile.getApellido()%></h5>
                                                        <h5><b> Email: </b> <%=profile.getCorreo()%></h5>
                                                        <h5><b> Fecha de nacimiento: </b><%=profile.getFechaDeNacimiento()%></h5>
                                                        <h5><b> DNI: </b> <%=profile.getDni()%> </h5>
                                                        <h5><b> Género </b> <%=profile.getGenero()%> </h5>
                                                        <h5><b> Categoría de juego preferido: </b> <%=profile.getCategoriaJuegoPreferida()%> </h5>
                                                        <h5><b> Fecha de Registro: </b> <%=profile.getFechaRegistro()%> </h5>
                                                        <h5><b> Estado </b> <%=profile.getEstado()%> </h5>
                                                        <% } %>
                                                    </div>
                                                </div>

                                                <div class="card-body center-h center-h">
                                                    <div class="col-12 col-xl-auto mb-3">
                                                        <div class="d-flex justify-content-end">
                                                            <button class="btn btn-outline-danger" type="button">BAN</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                    </div>
                </div>

                <section id="testimonials" class="testimonials">
                    <div class="container-fluid">
                        <!-- Earnings (Monthly) Card Example -->
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-xl-6 col-md-6 mb-4">
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">LISTA DE JUEGOS COMPRADOS</h6>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                                <thead>
                                                    <tr>
                                                        <th>NOMBRE DEL JUEGO</th>
                                                        <th>DINERO GASTADO</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <% for (PerfilUsuario juegosComprados : listaJuegosComprados) { %>
                                                    <tr>
                                                        <td><%=juegosComprados.getNombreJuegos() %></td>
                                                        <td><%=juegosComprados.getPrecio()%></td>
                                                    </tr>
                                                    <% } %>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6 col-md-6 mb-4">
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">LISTA DE JUEGOS VENDIDOS</h6>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable1" width="100%" cellspacing="0">
                                                <thead>
                                                    <tr>
                                                        <th>NOMBRE DEL JUEGO</th>
                                                        <th>DINERO GANADO</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <% for (PerfilUsuario juegosVendidos : listaJuegosVendidos) { %>
                                                    <tr>
                                                        <td><%=juegosVendidos.getNombreJuegos() %></td>
                                                        <td><%=juegosVendidos.getPrecio_admin()%></td>
                                                    </tr>
                                                    <% } %>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="assets/vendor/jquery/jquery.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="assets/js/sb-admin-2.min.js"></script>

    </body>
</html>
