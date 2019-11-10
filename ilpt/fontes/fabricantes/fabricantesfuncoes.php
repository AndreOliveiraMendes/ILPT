<?php
#--------------------------------------------------------------------------------------------------------------------------------
# Programa....: funcoes gerais
# Descrição...: Este é o conjunto de funções. São as funções que de modo mais comum serão utilizadas em outros programas.
#               Todas são declaradas como funções e passa a ficar "disponíveis" no programa que referenciar o toolkit.php
# Objetivo....: Declarar e disponibilizar as funções mais comuns no sistema.
# Autor.......: JMH - Copie, mas diga que fez!
# Criação.....: 2018-10-24
# Atualização.: 2018-10-24 - Criação e desenvolvimento das funções: picklist() e mostraregistro().
#--------------------------------------------------------------------------------------------------------------------------------
function picklist($prg)
{ # este bloco monta o form e passa o bloco para o valor 2 em modo oculto
  # Aqui se escreve o segmento de cÃ³digo que 'lÃª' a tabela fabricantes recuperando 
  # os campos pkmedico e txnomemedico
  global $linkmy;
  $cmdsql="SELECT pkfabricante, txnome FROM fabricantes ORDER BY txnome";
  $execsql=mysqli_query($linkmy,$cmdsql);
  printf(" <form action='$prg' method='post'>\n
            <input type='hidden' name='bloco' value=2>
            <select name='pkfabricante'>\n");
  while ( $le=mysqli_fetch_array($execsql) )
  { # laÃ§o para ler os registros do vetor montado no _query()
    printf("<option value='$le[pkfabricante]'>$le[txnome]-($le[pkfabricante])</option>\n");
  }
  printf("  </select><br>\n
            <input type='submit' value='Enviar'>\n
            </form>\n"); 
}
function mostraregistro($CP)
{ # Este bloco vai exibir os dados do medico escolhido no form da tela anterior
  # lendo o registro de pabricantes
  global $linkmy;
  $cmdsql="SELECT f.*, l.txnomelogradouro as txlog FROM fabricantes as f INNER JOIN logradouros as l ON f.fklogradouro = l.pklogradouro WHERE f.pkfabricante='$CP'";
  $execsql=mysqli_query($linkmy,$cmdsql);
  $le=mysqli_fetch_array($execsql);
  printf("<table>
          <tr><td>Cod.</td>         <td>$le[pkfabricante]</td></tr>\n
		  <tr><td>nome.</td>		<td>$le[txnome]</td></tr>\n
		  <tr><td>razão social.</td>	<td>$le[txrazaosocial]</td></tr>\n
		  <tr><td>logradouro.</td>	<td>$le[txlog]</td></tr>\n
		  <tr><td>complemento.</td>	<td>$le[txcomplemento]</td></tr>\n
		  <tr><td>cep.</td>	<td>$le[nucep]</td></tr>\n
		  <tr><td>data fabricacao</td>	<td>$le[dtcadfabricante]</td><tr>\n");
  printf("<table>\n");
}
?>