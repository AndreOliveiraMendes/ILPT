<?php
require_once("../../funcoes/toolkit.php");
require_once("./fabricantesfuncoes.php");
iniciapagina("fabricantes","Excluir","#F1F1F1");
# Este Ã© um exemplo de programa recursivo
# Usa-se uma das funÃ§Ãµes de ambiente do PHP que
# Veririfica se exsite valor em variÃ¡vel ou vetor.
# A funÃ§Ã£o ISSET() retorna True ou False se existe ou nÃ£o valor em
# uma variÃ¡vel.
$bloco=( ISSET($_POST['bloco']) ) ? $_POST['bloco'] : 1;
# Separador de Blocos LÃ³gicos do programa
switch ($bloco)
{
  case (1):
  { # chamada da funÃ§Ã£o que monta a caixa de seleÃ§Ã£o para escolha do registro
    picklist("fabricantesexcluir.php");
    break;
  }
  case (2):
  { # Executando a funÃ§Ã£o que mostra os detalhes do registro escolhido no picklist.
    mostraregistro("$_REQUEST[pkfabricante]");
    # montando o form que 'confirma a exclusÃ£o', passando o bloco para 3 em modo oculto
    printf("<form action='fabricantesexcluir.php' method='post'>\n
              <input type='hidden' name='bloco' value=3>\n
              <input type='hidden' name='pkfabricante' value='$_REQUEST[pkfabricante]'>\n
              <input type='submit' value='Confirma a exclusÃ£o'>\n
            </form>\n");
    break;
  }
  case (3):
  { # Executa o controle da exclusÃ£o
    # Montando o comando que vai deletar o registro
    $cmdsql="DELETE FROM fabricantes WHERE pkfabricante='$_REQUEST[pkfabricante]'";
    # Iniciando o controle da transaÃ§Ã£o. Usa-se um booleano $trytrans
    $trytrans=TRUE;
    while ( $trytrans )
    { # Iniciando a transaÃ§Ã£o (O SGBD Ã© avisado para iniciar os logs de transaÃ§Ã£o)
      mysqli_query($linkmy,"START TRANSACTION");
      # Executando o comando no BD
      $execsql=mysqli_query($linkmy,$cmdsql);
      # Este comando retorna a situaÃ§Ã£o de erro em duas funÃ§Ãµes do PHP:
      # _errno() - NÃºmero do Erro
      # _error() - Texto com a mensagem de erro
      # Desvio condicional para as situaÃ§Ãµes de erro
      if ( mysqli_errno($linkmy)==0 )
      { # A transaÃ§Ã£o deve ser concluida e o laÃ§o de repetiÃ§Ã£o deve ser 'quebrado'
        mysqli_query($linkmy,"COMMIT");
        $trytrans=FALSE;
        $mens="Registro de fabricantes com codigo='$_REQUEST[pkfabricante]' foi excluÃ­do com sucesso";
      }
      else
      { if ( mysqli_errno($linkmy)==1213 )
        { # DEADLOCK, tenta novamente
          $trytrans=TRUE;
        }
        else
        { # Erro irrecuperavel. Parar de tentar a transaÃ§Ã£o
          $trytrans=FALSE;
          $mens=mysqli_errno($linkmy)."-".mysqli_error($linkmy);
        }
        # A transaÃ§Ã£o deve ser ABORTADA
        mysqli_query($linkmy,"ROLLBACK");
      }
    }
    printf("$mens<br>\n");
    break;
  }
}
fimdepagina("excluir","fabricantesexcluir.php",FALSE);
?>