<?php
#--------------------------------------------------------------------------------------------------------------------------------
# Programa....: medicosincluir (arquivo medicosincluir.php)
# Descrição...: Este eh PA-Incluir. Este PA tem 2 'cases': case 1 monta um formulario e no case 2 monta o comando de atualizacao
#               (Incluir - INSERT) e controla a transacao.
# Objetivo....: Coletar dados em um form e gravar os dados em fabricante controlando a transacao..
# Autor.......: JMH - Copie, mas diga que fez!
# Criação.....: 2019-10-30
# Atualização.: 2019-10-30 - Criacao e desenvolvimento da estrutura basica do PA.
#               2019-10-30 - Desenvolvimento do form para coleta de dados.
#               2019-10-30 - Desenvolvimento do controle da transacao. Escrita do comando INSERT dentro do laco de repeticao.
#               2019-10-30 - Teste de conformidade.
#--------------------------------------------------------------------------------------------------------------------------------
require_once("../../funcoes/toolkit.php");
require_once("./fabricantesfuncoes.php");
iniciapagina("fabricantes","Incluir","#FFDEAD");
# Este é um exemplo de programa recursivo
# Usa-se uma das funções de ambiente do PHP que
# Veririfica se exsite valor em variavel ou vetor.
# A funcao ISSET() retorna True ou False se existe ou nao valor em
# uma variável.
$bloco=( ISSET($_POST['bloco']) ) ? $_POST['bloco'] : 1;
# Separador de Blocos Lógicos do programa
switch ($bloco){
	case (1):# Neste case monta-se o formulario para entrada de dados para um registro da tabela fabricantes
		printf("<form action='fabricantesincluir.php' method='POST'>\n");
		printf("<input type='hidden' name='bloco' value=2>\n");
		printf("<table>\n");
		printf("<tr><td>Nome</td><td><input type='' name='txnome' size='40' maxlength='200' value='Nome completo e sem abreviação'></td></tr>");
		printf("<tr><td>razao social</td><td><input type='' name='txrazaosocial' size='' maxlength='20' value=''></td></tr>");
		$cmdsql="SELECT pklogradouro, txnomelogradouro FROM logradouros ORDER BY txnomelogradouro";
		$execsql=mysqli_query($linkmy,$cmdsql);
		printf("<tr><td>logradouro</td><td><select name='fklogradouro'>\n");
		while ( $reg=mysqli_fetch_array($execsql) ){
			printf("<option value='$reg[pklogradouro]'>$reg[txnomelogradouro]-($reg[pklogradouro])</option>\n");
		}
		printf("</select></td></tr>\n");
		printf("<tr><td>&nbsp;</td><td>Complemento: <input type='text' value='referencias' name='txcomplemento' size='55' maxlength='80'></td></tr>");
		printf("<tr><td>&nbsp;</td><td>CEP: <input type='text' name='nucep' value='SÃ³ N&ordm;' size='8' maxlength='8'></td></tr>");
		printf("<tr><td>Data de fabricacao</td><td><input type='date' name='dtcadfabricante'></td></tr>");
		printf("<tr><td>&nbsp;</td><td>");
		botoes("Incluir",1,0,1,0);
		printf("</td></tr>\n");
		printf("</table>\n");
		printf("</form>\n");
		break;
	case (2):
		# Neste case executa-se o controle sobre a transação de inclusão de registro.
		# O código exemplifica a geração de valores da CP de fabricantes controlado pelo programa (sem usar campos autoincremento)
		# Comando para verificar se os campos estão corretamente definidos no form do case 1
		# printf("<pre>\n");print_r($_REQUEST);printf("</pre>\n");
		# Iniciando o controle da transação. Usa-se um booleano $trytrans
		$trytrans=TRUE;
		while ( $trytrans ){ # Iniciando a transação (O SGBD é avisado para iniciar os logs de transação)
			mysqli_query($linkmy,"START TRANSACTION");
			# montando o valor da CP de fabricante: ler o registro com maximo valor de pkmedico e depois somar 1 unidade ao valor
			# isso PRECISA ser feito 'dentro' da transação porque caso a transação seja abortada/reiniciada entao o $CP deve ser
			# determinado novamente
			$ultimacp=mysqli_fetch_array(mysqli_query($linkmy,"SELECT MAX(pkfabricante) AS CpMAX FROM fabricantes"));
			$CP=$ultimacp['CpMAX']+1;
			$cmdsql="INSERT INTO fabricantes (pkfabricante,
												txnome,
												txrazaosocial,
												fklogradouro,
												txcomplemento,
												nucep,
												dtcadfabricante)
							VALUES ('$CP',
									'$_REQUEST[txnome]',
									'$_REQUEST[txrazaosocial]',
									'$_REQUEST[fklogradouro]',
									'$_REQUEST[txcomplemento]',
									'$_REQUEST[nucep]',
									'$_REQUEST[dtcadfabricante]')";
			# confirmando o comando que serÃ¡ executado no BD
			# printf("$cmdsql<br>\n");
			# Executando o comando no BD
			$execsql=mysqli_query($linkmy,$cmdsql);
			# Este comando retorna a situacao de erro em duas funes do PHP:
			# _errno() - Número do Erro
			# _error() - Texto com a mensagem de erro
			# Desvio condicional para as situacoes de erro
			if ( mysqli_errno($linkmy)==0 ){ # A transacao deve ser concluida e o laco de repeticao deve ser 'quebrado'
				mysqli_query($linkmy,"COMMIT");
				$trytrans=FALSE;
				$mens="Registro de fabricantes com codigo='$CP' foi incluido com sucesso";
				mostraregistro("$CP");
			} else { 
				if ( mysqli_errno($linkmy)==1213 ){ # DEADLOCK, tenta novamente
					$trytrans=TRUE;
				} else { # Erro irrecuperavel. Parar de tentar a transacao
					$trytrans=FALSE;
					$mens=mysqli_errno($linkmy)."-".mysqli_error($linkmy);
				}
				# A transação deve ser ABORTADA
				mysqli_query($linkmy,"ROLLBACK");
			}
		}
		printf("$mens<br>\n");
		botoes('',2,1,0,0);
		break;
}
fimdepagina("Incluir","fabricantesincluir.php",FALSE);
?>
