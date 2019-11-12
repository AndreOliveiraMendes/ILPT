<?php
#--------------------------------------------------------------------------------------------------------------------------------
# Programa....: medicosexcluir (arquivo medicosexcluir.php)
# Descrição...: Este eh o PA-Excluir. Este programa tem 3 'cases'. O case 1 mostra a picklist para escolha do registro a excluir.
#               O cases 2 exibe os detalhes do registro e apresenta um form para confirmar a exclusao. O case 3 trata a transacao
#               de exclusão do registro.
# Objetivo....: Declarar e disponibilizar as funcoes mais comuns no sistema.
# Autor.......: JMH - Copie, mas diga que fez!
# Criação.....: 2019-10-24
# Atualização.: 2019-10-24 - Desenvolvimento das estruturas basicas do PA. Referencia para as funcoes: picklist() e detalharegistro().
#               2019-10-25 - Desenvolvimento do tratamento de transacao.
#               2019-10-25 - Testes de conformidade.
#--------------------------------------------------------------------------------------------------------------------------------
require_once("../../funcoes/toolkit.php");
require_once("./fabricantesfuncoes.php");
iniciapagina("fabricantes","Excluir","#F1F1F1");
# Este é um exemplo de programa recursivo
# Usa-se uma das funções de ambiente do PHP que
# Veririfica se exsite valor em variável ou vetor.
# A função ISSET() retorna True ou False se existe ou não valor em
# uma variável.
$bloco=( ISSET($_POST['bloco']) ) ? $_POST['bloco'] : 1;
# Separador de Blocos Lógicos do programa
switch ($bloco){
	case (1): # chamada da função que monta a caixa de seleção para escolha do registro
		picklist("fabricantesexcluir.php");
		break;
	case (2): # Executando a função que mostra os detalhes do registro escolhido no picklist.
		mostraregistro("$_REQUEST[pkfabricante]");
		# montando o form que 'confirma a exclusão', passando o bloco para 3 em modo oculto
		printf("<form action='fabricantesexcluir.php' method='post'>\n
			<input type='hidden' name='bloco' value=3>\n
			<input type='hidden' name='pkfabricante' value='$_REQUEST[pkfabricante]'>\n
			<input type='submit' value='Confirma a exclusão'>\n
			</form>\n");
		break;
	case (3): # Executa o controle da exclusão
		# Montando o comando que vai deletar o registro
		$cmdsql="DELETE FROM fabricantes WHERE pkfabricante='$_REQUEST[pkfabricante]'";
		# Iniciando o controle da transação. Usa-se um booleano $trytrans
		$trytrans=TRUE;
		while ( $trytrans ){ # Iniciando a transação (O SGBD é avisado para iniciar os logs de transação)
			mysqli_query($linkmy,"START TRANSACTION");
			# Executando o comando no BD
			$execsql=mysqli_query($linkmy,$cmdsql);
			# Este comando retorna a situação de erro em duas funções do PHP:
			# _errno() - Número do Erro
			# _error() - Texto com a mensagem de erro
			# Desvio condicional para as situações de erro
			if ( mysqli_errno($linkmy)==0 ){ # A transação deve ser concluida e o laço de repetição deve ser 'quebrado'
				mysqli_query($linkmy,"COMMIT");
				$trytrans=FALSE;
				$mens="Registro de fabricantes com codigo='$_REQUEST[pkfabricante]' foi excluído com sucesso";
			} else {
				if ( mysqli_errno($linkmy)==1213 ){ # DEADLOCK, tenta novamente
					$trytrans=TRUE;
				} else { # Erro irrecuperavel. Parar de tentar a transação
					$trytrans=FALSE;
					$mens=mysqli_errno($linkmy)."-".mysqli_error($linkmy);
				}
				# A transação deve ser ABORTADA
				mysqli_query($linkmy,"ROLLBACK");
			}
		}
		printf("$mens<br>\n");
		break;
}
fimdepagina("excluir","fabricantesexcluir.php",FALSE);
?>
