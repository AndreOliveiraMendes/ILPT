<?php
#--------------------------------------------------------------------------------------------------------------------------------
# Programa....: fabricantesalterar (arquivo fabricantesalterar.php)
# Descrição...: Este eh PA-Alterar. Este PA tem 3 'cases': case 1 monta a picklist para escolha do registro a alterar. O Case 2
#               monta um formulario e mostra os dados do registro que foi escolhido. No case 3 monta o comando de atualizacao
#               (Alterar - UPDATE) e controla a transacao.
# Objetivo....: Declarar e disponibilizar as funções mais comuns no sistema.
# Autor.......: JMH - Copie, mas diga que fez!
# Criação.....: 2019-11-06
# Atualização.: 2019-11-06 - Criacao e desenvolvimento da estrutura basica do PA.
#               2019-11-06 - Desenvolvimento do form para coleta de dados, com os dados do registro escolhido.
#               2019-11-06 - Desenvolvimento do segmento de codigo que faz o controle da transacao.
#               2019-11-06 - Teste de conformidade.
#--------------------------------------------------------------------------------------------------------------------------------
require_once("../../funcoes/toolkit.php");
require_once("./fabricantesfuncoes.php");
iniciapagina("fabricantes","Alterar","#FFDEAD");
# Este é um exemplo de programa recursivo
# Usa-se uma das funções de ambiente do PHP que
# Veririfica se exsite valor em variável ou vetor.
# A função ISSET() retorna True ou False se existe ou não valor em
# uma variável.
$bloco=( ISSET($_POST['bloco']) ) ? $_POST['bloco'] : 1;
# Separador de Blocos Lógicos do programa
switch ($bloco)
{
  case (1):
  { 
    picklist("fabricantesalterar.php");
    break;
  }
  case (2):
  { # Neste case monta-se o formulário para entrada de dados para um registro da tabela medicos
    # Lendo os dados de fabricantes e trazendo para o form para alteração
    $cmdsql="SELECT * FROM fabricantes WHERE pkfabricante='$_REQUEST[pkfabricante]'";
     printf("$cmdsql<br>");
    # executando a variavel
    $execsql=mysqli_query($linkmy,$cmdsql);
    # colocando os valores dos campos da tabela em um vetor
    $reg=mysqli_fetch_array($execsql);
    printf("<form action='fabricantesalterar.php' method='POST'>\n");
    printf("<input type='hidden' name='bloco' value=3>\n");
    printf("<input type='hidden' name='pkfabricante' value='$_REQUEST[pkfabricante]'>\n");
    printf("<table>\n");
    printf("<tr><td>Nome</td><td><input type='' name='txnome'    size='40' maxlength='200' value='$reg[txnome]'></td></tr>");
    printf("<tr><td>razão social</td><td><input type='' name='txrazaosocial'           size='20' maxlength='50' value='$reg[txrazaosocial]'>razão social do fabricante.</td></tr>");
    $cmdsql="SELECT pklogradouro, txnomelogradouro FROM logradouros ORDER BY txnomelogradouro";
    $execsql=mysqli_query($linkmy,$cmdsql);
    printf("<tr><td>Logradouro</td><td><select name='fklogradouro'>\n");
    while ( $le=mysqli_fetch_array($execsql) )
    {
      $selected=($le['pklogradouro']==$reg['fklogradouro']) ? " SELECTED": "";
      printf("<option value='$le[pklogradouro]'$selected>$le[txnomelogradouro]-($le[pklogradouro])</option>");
	}
	printf("</select></td></tr>");
	printf("<tr><td>&nbsp;</td><td>Complemento: <input type='text' name='txcomplemento' value='$reg[txcomplemento]' size='48' maxlength='80'></td></tr>");
	printf("<tr><td>&nbsp;</td><td>CEP: <input type='text' name='nucep' value='$reg[nucep]' size='8' maxlength='8'></td></tr>");
    printf("<tr><td>Data de fabricação</td><td><input type='date' name='dtcadfabricante' value='$reg[dtcadfabricante]'></td></tr>");
    printf("<tr><td>&nbsp;</td><td><input type='reset' value='Limpar'><input type='submit' value='Alterar registro'></td></tr>\n");
    printf("</table>\n");
    printf("</form>\n");
    break;
  }
  case (3):
  {
    # Neste case executa-se o controle sobre a transação de alteracao do registro.
    # Montando o comando que vai deletar o registro
    $cmdsql="UPDATE fabricantes SET txnome        	= '$_REQUEST[txnome]',
								   txrazaosocial 	= '$_REQUEST[txrazaosocial]',
							       fklogradouro		= '$_REQUEST[fklogradouro]',
							       txcomplemento 	= '$_REQUEST[txcomplemento]',
							       nucep 		 	= '$_REQUEST[nucep]',
							       dtcadfabricante  = '$_REQUEST[dtcadfabricante]' 
                            WHERE pkfabricante='$_REQUEST[pkfabricante]'";
    # Iniciando o controle da transacao. Usa-se um booleano $trytrans
    $trytrans=TRUE;
    while ( $trytrans )
    { # Iniciando a transação (O SGBD é avisado para iniciar os logs de transação)
      mysqli_query($linkmy,"START TRANSACTION");
      # Executando o comando no BD
      $execsql=mysqli_query($linkmy,$cmdsql);
      # Este comando retorna a situação de erro em duas funções do PHP:
      # _errno() - Número do Erro
      # _error() - Texto com a mensagem de erro
      # Desvio condicional para as situações de erro
      if ( mysqli_errno($linkmy)==0 )
      { # A transação deve ser concluida e o laço de repetição deve ser 'quebrado'
        mysqli_query($linkmy,"COMMIT");
        $trytrans=FALSE;
        $mens="Registro de fabricante com código='$_REQUEST[pkfabricante]' foi Alterado com sucesso";
        mostraregistro("$_REQUEST[pkfabricante]");
      }
      else
      { if ( mysqli_errno($linkmy)==1213 )
        { # DEADLOCK, tenta novamente
          $trytrans=TRUE;
        }
        else
        { # Erro irrecuperavel. Parar de tentar a transação
          $trytrans=FALSE;
          $mens=mysqli_errno($linkmy)."-".mysqli_error($linkmy);
        }
        # A transação deve ser ABORTADA
        mysqli_query($linkmy,"ROLLBACK");
      }
    }
    printf("$mens<br>\n");
    printf("<input type='button' value='Escolher' onclick='history.go(-2)'>\n");
    printf("<input type='button' value='Voltar' onclick='history.go(-1)'>\n");
    printf("<input type='button' value='Sair' onclick='history.go(-3)'><br>\n");
    break;
  }
}
# Finalizando a página
fimdepagina("Alterar","fabricantesalterar.php",FALSE);
?>