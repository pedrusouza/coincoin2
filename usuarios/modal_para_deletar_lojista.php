<!-- Modal de Delete-->
<div class="modal fade" id="delete-modal-lojista-definitivo" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
    <div class="modal-dialog" role="document">
		<div class="modal-content">
		    <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true"></span>x</button>
		    </div>
		    <div class="modal-body" style="background: white">	
		      	Deseja realmente excluir este item?
		    </div> 
		    <div class="modal-footer">	  
		      	    <a id="confirm" class="btn btn-danger" href="#">Sim</a>	<a id="cancel" class="btn btn-default" data-dismiss="modal">N&atilde;o</a>	
		    </div>
		</div>
	</div>
</div>

<!-- Modal de Logout-->
<div class="modal fade" id="logout-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
    <div class="modal-dialog" role="document">
		<div class="modal-content">
		    <div class="modal-header">
          <?php echo $nome ?>, deseja realmente encerrar sua sessão?
          <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true"></span>x</button>
		    </div>
		    <div class="modal-body">
		      	<a id="confirm" class="btn btn-primary" href="../logout.php">Sim</a>
            <a id="cancel" class="btn btn-default" data-dismiss="modal">N&atilde;o</a>
		    </div>
		</div>
	</div>
</div>