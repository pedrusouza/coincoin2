/**	 * Passa os dados do cliente para o Modal, e atualiza o link para exclusão	 */	

$('#delete-modal').on('show.bs.modal', function (event) {		
  var button = $(event.relatedTarget);	 
  var nome = button.data('usuario');	  	  

  var modal = $(this);	  
  modal.find('.modal-title').text('Excluir ' + nome);	  
  modal.find('#confirm').attr('href', 'delete.php?id=' + id);	

})