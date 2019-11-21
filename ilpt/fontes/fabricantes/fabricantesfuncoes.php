<?php
#--------------------------------------------------------------------------------------------------------------------------------
# Programa....: funcoes gerais de fabricantes
# Nome        : fabricantesfuncoes
# Descrição...: Conjunto de funcoes que serao utilizadas nos programas relacionados a fabricantes.
#               Todas funcoes declaradas passam a ficar "disponiveis" no programa que referenciar o fabricantesfuncoes
# Objetivo....: Declarar e disponibilizar as funcoes mais comuns no gerenciamento de fabricantes.
# Autor.......: JMH - Copie, mas diga que fez!
# Criação.....: 2018-10-30
# Atualização.: 2018-10-30 - Criacao e desenvolvimento das funções: picklist() e mostraregistro().
#--------------------------------------------------------------------------------------------------------------------------------
function picklist($prg){ # este bloco monta o form e passa o bloco para o valor 2 em modo oculto
	# Aqui se escreve o segmento de código que 'lê' a tabela fabricantes recuperando
	# os campos pkfabricante, txnome
	global $linkmy;
	$cmdsql="SELECT pkfabricante, txnome FROM fabricantes ORDER BY txnome";
	$execsql=mysqli_query($linkmy,$cmdsql);
	printf(" <form action='$prg' method='post'>\n
			<input type='hidden' name='bloco' value=2>
			<select name='pkfabricante'>\n");
	while ( $le=mysqli_fetch_array($execsql) ){ # laço para ler os registros do vetor montado no _query()
		printf("<option value='$le[pkfabricante]'>$le[txnome]-($le[pkfabricante])</option>\n");
	}
	printf("</select><br>");
}
function mostraregistro($CP){ # Este bloco vai exibir os dados do fabricante escolhido no form da tela anterior
	# lendo o registro de fabricantes
	global $linkmy;
	$cmdsql="SELECT f.*, l.txnomelogradouro as txlog FROM fabricantes as f INNER JOIN logradouros as l ON f.fklogradouro = l.pklogradouro WHERE f.pkfabricante='$CP'";
	$execsql=mysqli_query($linkmy,$cmdsql);
	$le=mysqli_fetch_array($execsql);
	printf("<table>
			<tr><td>Cod.</td>	<td>$le[pkfabricante]</td></tr>\n
			<tr><td>nome.</td>	<td>$le[txnome]</td></tr>\n
			<tr><td>razão social.</td>	<td>$le[txrazaosocial]</td></tr>\n
			<tr><td>logradouro.</td>	<td>$le[txlog]</td></tr>\n
			<tr><td>complemento.</td>	<td>$le[txcomplemento]</td></tr>\n
			<tr><td>cep.</td>	<td>$le[nucep]</td></tr>\n
			<tr><td>data fabricacao</td>	<td>$le[dtcadfabricante]</td><tr>\n");
	printf("<table>\n");
}
#------- Fim do fabricantesfuncoes
?>
