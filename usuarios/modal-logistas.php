<!-- Modal de Delete-->
<div class="modal fade" id="delete-modal-logistas" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
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
<!-- Modal de Inserção de CoinCoins -->

<div class="modal fade" id="insert-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
    <div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title" id="modalLabel">Adicionar CoinCoins</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span></button>
        </div>
        <form action="adicionar.php" method="POST" id="coins">
            <div class="modal-body">
                <div class="form-group">
                    <label>Números de Coincoins a adicionar</label>
                    <input type="number" min="0.00" step="0.1" value='0.00' name="Coincoins" class="form-control" placeholder="COINCOIN">
                        <!--<?php
                            if($erro_email == 1){
                            echo '<font style="color:#FF0000">Email não existe</font>';
                            }
                        ?>-->
                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary" >Enviar</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
        <!--<div class="modal-footer">
                <a id="confirm" class="btn btn-primary" href="#">Confirmar</a>  <a id="cancel" class="btn btn-default" data-dismiss="modal">N&atilde;o</a>
        </div>    -->
    </div>
  </div>
</div> <!-- /.modal -->

<!-- Modal de Visualização de CoinCoins -->

<div class="modal fade" id="see-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">	 
    <div class="modal-dialog" role="document">	  
		<div class="modal-content"> 
		    <div class="modal-header"> 
                <h4>Saldo</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true"></span>x</button>
		    </div>
            <div class="modal-body" id="saldo">
                <div class="form-group col-lg-12">
                    <h5 class="testo-saldo"></h5>
                </div>
            </div>
		    <div class="modal-footer">	  
		      	<a id="cancel" class="btn btn-default" data-dismiss="modal">Ok</a>	
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