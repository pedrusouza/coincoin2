/**	 * Passa os dados do cliente para o Modal, e atualiza o link para exclusão	 */	

$('#delete-modal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget);
  var id = button.data('usuario');
  var modal = $(this);
  modal.find('.modal-title').text('Excluir Usuário com o ID ' + id);	  
  modal.find('#confirm').attr('href', 'delete.php?id=' + id);	
})

$('#insert-modal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget);
  var id = button.data('usuario');
  var modal = $(this);
  modal.find('#confirm').attr('href', 'adicionar.php?id=' + id);	 
})