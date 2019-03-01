/**	 * Passa os dados do cliente para o Modal, e atualiza o link para exclusão	 */	

$('#delete-modal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget);
  var id = button.data('usuario');
  var modal = $(this);
  modal.find('.modal-title').text('Excluir Usuário com o ID ' + id);	  
  modal.find('#confirm').attr('href', 'delete.php?id=' + id);	
})

$('#delete-modal-logistas').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget);
  var id = button.data('usuario');
  var modal = $(this);
  modal.find('.modal-title').text('Excluir Usuário com o ID ' + id);	  
  modal.find('#confirm').attr('href', 'deletelogista.php?id=' + id);	
})

$('#insert-modal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget);
  var id = button.data('usuario');
  var modal = $(this);
  modal.find('#confirm').attr('href', 'adicionar.php?id=' + id);	 
})

/*$('#see-modal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget);
  var id = button.data('usuario');
  var modal = $(this);
  modal.find('.modal-title-view').text('Ver ID ' + id);
  modal.find('#confirm').attr('href', 'see.php?id=' + id);	
})*/

$('#see-modal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var recipient = button.data('whatever') // Extract info from data-* attributes
  var recipientsaldo = button.data('whateversaldo')
  var recipientnome = button.data('whatevernome')

  var modal = $(this)

  modal.find('.testo-saldo').text(recipientnome + ' tem ' + recipientsaldo)
})