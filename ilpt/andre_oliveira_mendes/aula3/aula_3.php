<?php
# Este é um exemplo de programa recursivo
# Usa-se uma das funções de ambiente do PHP que
# Veririfica se exsite valor em variável ou vetor.
# A função ISSET() retorna True ou False se existe ou não valor em
# uma variável.
$bloco=( ISSET($_POST['bloco']) ) ? $_POST['bloco'] : 1;
# INICIANDO a página html
printf("<html>\n");
printf(" <body>\n");
# Aqui se escreve o trecho de código que faz a conexão com o BD (MariaDb).
# O PHP dispõe de funções de ambiente para comunicar-se com outros serviços.
# para conexão com o MariaDB o PHOP usa as funções iniciadas por mysqli_
# entre a FA existe a de conexão com o BD que recebe 4 parâmetros.
# Host = nome do servidor
# dbname = Nome da base de dados
# username = nome do usuário que acessa o bd
# password = senha de acesso do usuário no bd.
$host='localhost';
$user='root';
$senha='';
$dbname='ilp20192tn';
# A variável que vai receber o ponteiro de memória deve ser 'vista' por todos os programas que serão executados no PHP
# 'antes' e 'depois' de feita a conexão. Por isso precisamos 'globalizar' a variável.
global $linkmy;
$linkmy = mysqli_connect($host,$user,$senha,$dbname) or die ("A conex&atilde;o com o BD n&atilde;o deu certo");
# Se quiser verificar a string de conexão, tire o comentário da linha abaixo e recarregue o PA que referencia o setfuncoes.php
# printf("host=$host, user=$user,senha=$senha,dbname=$dbname<br>");
# Nas camadas de serviços existem trocas de mensagens com caracteres acentuados.
# é necessário acertar as tabelas de simbolos desde a camada do cliente até as tabelas do servidor de dados.
# Acertando a tabela de caracteres que sera usada no MySQL
mysqli_query($linkmy,"SET NAMES 'utf8'");
mysqli_query($linkmy,"SET character_set_connection=utf8");
mysqli_query($linkmy,"SET character_set_client=utf8");
mysqli_query($linkmy,"SET character_set_results=utf8");
# Separador de Blocos Lógicos do programa
switch ($bloco)
{
  case (1):
  { # este bloco monta o form e passa o bloco para o valor 2 em modo oculto
    # Aqui se escreve o segmento de código que 'lê' a tabela fabricantes recuperando 
    # os campos pkfabricante e txnome
    $cmdsql="SELECT pkfabricante, txnome FROM fabricantes";
    $execsql=mysqli_query($linkmy,$cmdsql);
    printf(" <form action='aula_3.php' method='post'>\n");
    printf("  <input type='hidden' name='bloco' value=2>
              <select name='pkfabricante'>\n");
    while ( $le=mysqli_fetch_array($execsql) )
    { # laço para ler os registros do vetor montado no _query()
      printf("<option value='$le[pkfabricante]'>$le[txnome]-($le[pkfabricante])</option>");
    }
    printf("  </select><br>\n
              <input type='submit' value='Enviar'>"); 
    printf(" </form>\n"); 
    break;
  }
  case (2):
  { # Este bloco vai exibir os dados do medico escolhido no form da tela anterior
    # lendo o registro de fabricantes
    $cmdsql="SELECT * FROM fabricantes WHERE pkfabricante='$_REQUEST[pkfabricante]'";
    $execsql=mysqli_query($linkmy,$cmdsql);
    $le=mysqli_fetch_array($execsql);
    printf("<table>
            <tr><td>Cod.</td><td>$le[pkfabricante]</td></tr>
            <tr><td>Nome:</td><td>$le[txnome]</td></tr>
            <tr><td>razao social:</td><td>$le[txrazaosocial]</td></tr>
            <tr><td>fk logradouro:</td><td>$le[fklogradouro]</td></tr>
            <tr><td>complemento:</td><td>$le[txcomplemento]</td></tr>
            <tr><td>cep:</td><td>$le[nucep]</td></tr>
            <tr><td>data de fabricação</td><td>$le[dtcadfabricante]</td></tr>\n");
    printf("<table>\n");
    break;
  }
}
printf(" </body>\n");
printf("</html>\n");
?>