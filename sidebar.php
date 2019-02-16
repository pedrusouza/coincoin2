<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="clientes.php" class="brand-link">
    <img src="../coincoin.jpg"
         alt="AdminLTE Logo"
         class="brand-image img-circle elevation-3"
         style="opacity: .8">
    <span class="brand-text font-weight-light">CoinCoin</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user (optional) -->
    <div class="user-panel">
      <!--<div class="image">
        <img src="<?php $imagem ?>" class="user-image" alt="User Image">
      </div>-->
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="fa fa-user"></i>
            <p>
             Olá <?php echo $nome ?>!
              <i class="right fa fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a data-toggle="modal" data-target="#logout-modal" class="nav-link">
                <i class="fa fa-power-off nav-icon"></i>
                <p>Sair</p>
              </a>
            </li>
          </ul>
        </li>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fa fa-dashboard"></i>
            <p>
             Usuários
              <i class="right fa fa-angle-left"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="clientes.php" class="nav-link">
                <i class="fa fa-circle-o nav-icon"></i>
                <p>Usuários aprovados</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="../assets/index2.html" class="nav-link">
                <i class="fa fa-circle-o nav-icon"></i>
                <p>Usuários a aprovar</p>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item">
          <a href="lojistas.php" class="nav-link">
            <i class="nav-icon fa fa-th"></i>
            <p>
              Lojistas
            </p>
          </a>
        </li>
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fa fa-pie-chart"></i>
            <p>
              Lojas
            </p>
          </a>
        </li>
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fa fa-pie-chart"></i>
            <p>
              Transações
            </p>
          </a>
        </li>

    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>
