<?php
	require_once('functions.php');
	index();
	session_start();
	$nome = $_SESSION['nome'];
	$saldo = $_SESSION['saldo'];
	$imagem = $_SESSION['imagem'];
	if(!isset($_SESSION['email'])){
		header('Location: ../index.php?erro=1');
	}
?>


<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CoinCoin | Lista de usuários</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="../assets/plugins/datatables/dataTables.bootstrap4.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../assets/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
	<?php require_once "../header.php" ?>
  <!-- /.navbar -->
	<?php require_once "../sidebar.php" ?>
	<!-- Sidebar -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Tabela de Usuários</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Tabela de Usuários</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

    	<div class="card">
        <div class="card-header">
          <h3 class="card-title">Usuários Aprovados</h3>
        </div>
            <!-- /.card-header -->
    		<?php if (!empty($_SESSION['message'])) : ?>
    		<div class="alert alert-<?php echo $_SESSION['type']; ?> alert-dismissible" role="alert">			<
    			<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">&times;</span></button>
    			<?php echo $_SESSION['message']; ?>
    		</div>
				<?php clear_messages(); ?>
				<?php endif; ?>

          <div class="card-body">
            <div class="table-responsive">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
              <tr>
                <th>Nome</th>
                <th>CPF</th>
                <th>E-mail</th>
                <th>Ações</th>
              </tr>
              </thead>
              <tbody>
              	<?php if ($usuarios) : ?>
	               	<?php foreach ($usuarios as $usuario) : ?>
		                <?php if(($usuario['privilegio']) == 0 && ($usuario['verificado']) == 1) : ?>
		                <tr>
		                  <td width="28%"><?php echo $usuario['nome']; ?></td>
		                  <td width="14%"><?php echo $usuario['cpf']; ?></td>
		                  <td width="26%"><?php echo $usuario['email']; ?></td>
		                  <td class="actions text-right" width="32%">
                      <a href="#"class="btn btn-sm btn-success view-data" data-toggle="modal" data-target="#see-modal" data-whateversaldo="<?php echo $usuario['saldo']; ?>" data-whatevernome="<?php echo $usuario['nome']; ?>" id="<?php echo $usuario['id']; ?>" data-usuario="<?php echo $usuario['id']; ?>"><i class="fa fa-eye"></i> Visualizar</a>        
		                    <a href="insert_coin.php?id=<?php echo $usuario['id'];?> "class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i> Inserir Coincoins</a>
		                    <a href="#" class="btn btn-sm btn-danger" class="fa fa-pencil" data-toggle="modal" data-target="#delete-modal" data-usuario="<?php echo $usuario['id']; ?>"> Excluir</a>
		                  </td>
		                </tr>
		              	<?php endif; ?>
	    						<?php endforeach; ?>
    						<?php else : ?>
    							<tr>
    								<td colspan="6">Nenhum registro encontrado.</td>
    							</tr>
   							<?php endif; ?>
   						</tbody>
						</table>

 					<?php include('modal.php'); ?>
          </div>
          </div>
            <!-- /.card-body -->
        </div>
          <!-- /.card -->
		</section>
			<!-- /.content -->
  </div>
        <!-- /.col -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.0.0-alpha
    </div>
    <strong>Copyright &copy; 2014-2018 <a href="http://adminlte.io">AdminLTE.io</a>.</strong> All rights
    reserved.
  </footer>

  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="<?php echo BASEURL; ?>js/jquery-1.11.2.min.js"><\/script>')</script>
<!-- jQuery -->
<script src="../assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="../assets/plugins/datatables/jquery.dataTables.js"></script>
<script src="../assets/plugins/datatables/dataTables.bootstrap4.js"></script>
<!-- SlimScroll -->
<script src="../assets/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../assets/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../assets/dist/js/demo.js"></script>

<script src="../assets/dist/js/main.js"></script>
<!-- page script -->
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>
</body>
</html>
