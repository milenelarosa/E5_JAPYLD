<%@ page import="com.example.e5_japyld.models.beans.JuegosMenosVendidos" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% ArrayList<JuegosMenosVendidos> lista = (ArrayList<JuegosMenosVendidos>) request.getAttribute("lista"); %>
<!DOCTYPE html>
<html lang="es">
    <head>
      <title>Title</title>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">

      <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
            crossorigin="anonymous">


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

  <body id="page-top" >


    <!-- Page Wrapper -->
    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="managerInicio.html">
          <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
          </div>
          <div class="sidebar-brand-text mx-3">JAPYLD </div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->

        <!-- Divider -->
        <hr class="sidebar-divider">



        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
             aria-expanded="true" aria-controls="collapseTwo">
            <i class="fa-fw"></i>
            <span>ESTADÍSTICAS DE TODOS LOS JUEGOS</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="managerGeneroJuegos.html">
            <i class="fas fa-fw fa-cog"></i>
            <span>POR GÉNERO DE JUEGO</span></a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="managerConsolaJuegos.html">
            <i class="fas fa-fw fa-cog"></i>
            <span>POR CONSOLA DE JUEGO</span></a>
        </li>

        <br>

        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/5juegosMasVendidos">
            <i class="fa-fw "></i>
            <span>TOP 5 DE JUEGOS MÁS VENDIDOS</span></a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/5juegosMasVendidos">
            <i class="fa-fw "></i>
            <span>TOP 5 DE JUEGOS MENOS VENDIDOS</span></a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="managerEditarJuegos.html">
            <i class="fa-fw "></i>
            <span>EDITAR JUEGOS</span></a>
        </li>

      </ul>
      <!-- End of Sidebar -->

      <!-- Content Wrapper -->
      <div id="content-wrapper" class="center d-flex flex-column">
        <nav class="navbar navbar-expand navbar-light bg-gray-100 topbar mb-4 static-top shadow">
          <!-- Main Content -->
          <div class="container center-h center-h">

            <button class="btn btn-primary btn-block rounded-lg px-4 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal" onclick=window.location.href="<%=request.getContextPath()%>/UsuariosModuloServlet">
                            <span class="d-flex align-items-center justify-content-center">
                                <i class="bi-chat-text-fill me-2"></i>
                            <span class="medium">USUARIOS</span>
                            </span>
            </button>

            <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
              <li class="nav-link me-lg-3"></li>
            </ul>

            <button class="btn btn-primary btn-block rounded-lg px-4 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal" onclick="window.location.href='managerConsolaJuegos.html'">
                        <span class="d-flex align-items-center justify-content-center">
                            <i class="bi-chat-text-fill me-2"></i>
                            <span class="medium"> JUEGOS </span>
                        </span>
            </button>

            <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
              <li class="nav-link me-lg-3"></li>
            </ul>

            <button class="btn btn-primary btn-block rounded-lg px-4 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal" onclick="window.location.href='managerInicio.html'">
                        <span class="d-flex align-items-center justify-content-center">
                            <i class="bi-chat-text-fill me-2"></i>
                            <span class="medium">   ADMINISTRADORES   </span>
                        </span>
            </button>

          </div>

          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->


          <!-- Topbar Navbar -->


        </nav>
        <!-- End of Topbar -->

        <div class="container-fluid">
          <br>
          <h1 class="h3 mb-2 text-gray-800 text-center">JUEGOS MENOS VENDIDOS</h1>
          <br>
          <br>
          <div class="row">
            <!-- Earnings (Monthly) Card Example -->
            <% for (JuegosMenosVendidos jmv : lista) { %>
              <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <h5 class="m-0 font-weight-bold text-primary"><%=jmv.getNombreJuego() %></h5>
                        <br>
                        <div class="h3 mb-0 font-weight-bold text-gray-800 justify-content-center">⭐</div>
                          <p class="p-5 bg-gray-400">
                          <br>
                          <br>
                          <br>
                          <br>
                          <br>
                          <br>
                          <br>
                          </p>
                      </div>

                      <div class="col-auto">
                        <i class="fas fa-2x text-gray-300"></i>
                      </div>

                    </div>
                  </div>
                </div>
              </div>
            <% } %>

          </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="assets/vendor/jquery/jquery.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="assets/js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="assets/vendor/chart.js/Chart.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="assets/js/demo/chart-area-demo.js"></script>
        <script src="assets/js/demo/chart-pie-demo.js"></script>

      </div>
    </div>
  </body>
</html>
