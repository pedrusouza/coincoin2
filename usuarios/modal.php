<!-- Modal de Delete-->	

<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">	 
    <div class="modal-dialog" role="document">	  
		<div class="modal-content">
		    <div class="modal-header">	
		      	<button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true"></span>x</button>	 
		      	    <h4 class="modal-title" id="modalLabel">Excluir Item</h4>
		    </div>
		    <div class="modal-body">	
		      	Deseja realmente excluir este item?	
		    </div>	 
		    <div class="modal-footer">	  
		      	    <a id="confirm" class="btn btn-primary" href="#">Sim</a>	<a id="cancel" class="btn btn-default" data-dismiss="modal">N&atilde;o</a>	
		    </div>	    
		</div>	
	</div>	
</div> <!-- /.modal -->

<div class="modal fade" id="insert-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">  
    <div class="modal-dialog" role="document">    
    <div class="modal-content">
        <div class="modal-header">  
            <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span></button>  
                <h4 class="modal-title" id="modalLabel">Adicionar CoinCoins</h4>
        </div>
        <form action="insert-coin.php" method="POST" id="coins">
                <div class="modal-body">
                    <div class="form-group">
                        <label>Números de Coincoins a adicionar</label>
                        <input type="number" name="Coincoins" class="form-control" placeholder="COINCOIN">
                            <!--<?php
                                if($erro_email == 1){
                                  echo '<font style="color:#FF0000">Email não existe</font>';
                                }
                            ?>-->
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Enviar</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                </div>
            </form>
        <div class="modal-footer">    
                <a id="confirm" class="btn btn-primary" href="#">Confirmar</a>  <a id="cancel" class="btn btn-default" data-dismiss="modal">N&atilde;o</a>  
        </div>      
    </div>  
  </div>  
</div> <!-- /.modal -->