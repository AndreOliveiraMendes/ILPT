<?php
#--------------------------------------------------------------------------------------------------------------------------------
# Programa....: fabricanteslistar (arquivo fabricanteslistar.php)
# Descrição...: Este PA tem 2 'cases' com tres valores de $bloco. No primeiro case monta um form para escolha da ordenacao dos
#				dados de fabricantes que serao exibidos na listagem, nos cases 2 e 3 monta uma tabewla com os dados de uma juncao 
#				completa entre fabricantes e todas as tabelas relacionadas. Note o comando SQL que faz a juncao e deste modo faz o 
#				SBD trabalhar para o PA.
# Objetivo....: Montar a Listagem de dados da tabela fabricantes.
# Autor.......: JMH - Copie, mas diga que fez!
# Criação.....: 2019-11-08
# Atualização.: 2019-11-08 - Escrita da estrutura fundamental do programa
#							 (tela de escolha da ordem dos dados e processamento da listagem).
#				2019-11-10 - Coloquei o uso da funcao botoes.
#				2019-11-10 - Testes de conformidade.
#--------------------------------------------------------------------------------------------------------------------------------
require_once("../../funcoes/toolkit.php");
require_once("./fabricantesfuncoes.php");
$bloco=( ISSET($_POST['bloco']) ) ? $_POST['bloco'] : 1;
$cordefundo=($bloco<3) ? '#FFDEAD' : '#FFFFFF';
iniciapagina("fabricantes","Listar",$cordefundo);
# Separador de Blocos Lógicos do programa
switch (TRUE){
	case ( $bloco==1 ):# este bloco monta o form e passa o bloco para o valor 2 em modo oculto
		printf(" <form action='./fabricanteslistar.php' method='post'>\n");
		printf("  <input type='hidden' name='bloco' value=2>\n");
		printf("Escolha a ordem como os dados serão exibidos no relatório:<br>\n
			Código do fabricante.:(<input type='radio' name='ordem' value='F.pkfabricante'>)<br>\n
			Nome do fabricante...:(<input type='radio' name='ordem' value='F.txnome'>)<br>\n"); 
		botoes('Listar',1,0,1,0);
		printf(" </form>\n"); 
		break;
	case ( $bloco==2 || $bloco==3 ):# Este bloco vai processar a junção de fabricantes com logradouros
		# Depois monta a tabela com os dados e a seguir um form permitindo que a listagem seja exibida para impressão em uma nova aba.
		$cmdsql="SELECT F.*,
					L.txnomelogradouro as txlog
					FROM fabricantes AS F INNER JOIN logradouros AS L ON F.fklogradouro=L.pklogradouro";
		$execsql=mysqli_query($linkmy,$cmdsql);
		printf("<table border=1 style=' border-collapse: collapse; '>
			<tr><td>Cod.</td>\n
				<td>Nome:</td>\n
				<td>razão social.</td>\n
				<td>logradouro</td>\n
				<td>complemento</td>\n
				<td>cep</td>\n
				<td>data fabricacao</td></tr>\n");		
		while ( $le=mysqli_fetch_array($execsql) ){
			printf("<tr><td>$le[pkfabricante]</td>\n
						<td>$le[txnome]</td>\n
						<td>$le[txrazaosocial]</td>\n
						<td>$le[txlog]</td>\n
						<td>$le[txcomplemento]</td>\n
						<td>$le[nucep]</td>\n
						<td>$le[dtcadfabricante]</td></tr>\n");
		}
		printf("</table>\n");
		if ( $bloco==2 ){
			printf("<form action='./fabricanteslistar.php' method='POST' target='_NEW'>\n");
			printf("<input type='hidden' name='bloco' value=3>\n");
			printf("Gerar cópia para "); botoes("Impressão",2,1,0,0); # <button type='submit'>Impressão</button>
			printf("</form>\n");
		} else {
			printf("<button type='submit' onclick='window.print();'>Imprimir</button> - Corte a folha abaixo da linha no final da página<br>\n<hr>\n");
		}
		break;
}
fimdepagina("Listar","fabricanteslistar.php",FALSE);
?>