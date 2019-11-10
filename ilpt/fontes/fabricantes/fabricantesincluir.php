<?php
#--------------------------------------------------------------------------------------------------------------------------------
# Programa....: medicosincluir (arquivo medicosincluir.php)
# DescriÃ§Ã£o...: Este Ã© o conjunto de funÃ§Ãµes. SÃ£o as funÃ§Ãµes que de modo mais comum serÃ£o utilizadas em outros programas.
#               Todas sÃ£o declaradas como funÃ§Ãµes e passa a ficar "disponÃ­veis" no programa que referenciar o toolkit.php
# Objetivo....: Declarar e disponibilizar as funÃ§Ãµes mais comuns no sistema.
# Autor.......: JMH - Copie, mas diga que fez!
# CriaÃ§Ã£o.....: 2018-09-24
# AtualizaÃ§Ã£o.: 2018-09-24 - CriaÃ§Ã£o e desenvolvimento das funÃ§Ãµes: iniciapagina() e fimdepagina()
#               2018-10-01 - InclusÃ£o da funÃ§Ã£o de conexÃ£o com o banco de dados MySQL.
#               2018-10-02 - Comandos para ajuste dos caracteres acentuados em portuguÃªs, nas funÃ§Ãµes: iniciapagina e conecta_my.
#               2019-10-24 - Adaptando o texto para um comando de printf() para todas as TAGs do iniciapagina()
#--------------------------------------------------------------------------------------------------------------------------------
require_once("../../funcoes/toolkit.php");
require_once("./fabricantesfuncoes.php");
iniciapagina("fabricantes","Incluir","#FFDEAD");
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
  { # Neste case monta-se o formulÃ¡rio para entrada de dados para um registro da tabela fabricantes
    printf("<form action='fabricantesincluir.php' method='POST'>\n");
    printf("<input type='hidden' name='bloco' value=2>\n");
    printf("<table>\n");
    printf("<tr><td>Nome</td><td><input type='' name='txnome'    size='40' maxlength='200' value='Nome completo e sem abreviaÃ§Ã£o'></td></tr>");
    printf("<tr><td>razao social</td><td><input type='' name='txrazaosocial'           size='' maxlength='20' value=''></td></tr>");
    $cmdsql="SELECT pklogradouro, txnomelogradouro FROM logradouros ORDER BY txnomelogradouro";
    $execsql=mysqli_query($linkmy,$cmdsql);
    printf("<tr><td>logradouro</td><td><select name='fklogradouro'>\n");
    while ( $reg=mysqli_fetch_array($execsql) )
    {
      printf("<option value='$reg[pklogradouro]'>$reg[txnomelogradouro]-($reg[pklogradouro])</option>\n");
    }
    printf("</select></td></tr>\n");
    printf("<tr><td>&nbsp;</td><td>Complemento: <input type='text' value='referencias' name='txcomplemento' size='55' maxlength='80'></td></tr>");
    printf("<tr><td>&nbsp;</td><td>CEP: <input type='text' name='nucep' value='SÃ³ N&ordm;' size='8' maxlength='8'></td></tr>");
    printf("<tr><td>Data de fabricacao</td><td><input type='date' name='dtcadfabricante'></td></tr>");
    printf("<tr><td>&nbsp;</td><td><input type='reset' value='Limpar'><input type='submit' value='Incluir registro'></td></tr>\n");
    printf("</table>\n");
    printf("</form>\n");
/*
    printf("\n");
*/
    break;
  }
  case (2):
  {
    # Neste case executa-se o controle sobre a transaÃ§Ã£o de inclusÃ£o de registro.
    # O cÃ³digo exemplifica a geraÃ§Ã£o de valores da CP de mÃ©dicos controlado pelo programa (sem usar campos autoincremento)
    # Comando para verificar se os campos estÃ£o corretamente definidos no form do case 1
    # printf("<pre>\n");print_r($_REQUEST);printf("</pre>\n");
    # Iniciando o controle da transaÃ§Ã£o. Usa-se um booleano $trytrans
    $trytrans=TRUE;
    while ( $trytrans )
    { # Iniciando a transaÃ§Ã£o (O SGBD Ã© avisado para iniciar os logs de transaÃ§Ã£o)
      mysqli_query($linkmy,"START TRANSACTION");

      # montando o valor da CP de mÃ©dicos: ler o registro com mÃ¡ximo valor de pkmedico e depois somar 1 unidade ao valor
      # isso PRECISA ser feito 'dentro' da transaÃ§Ã£o porque caso a transaÃ§Ã£o seja abortada/reiniciada entÃ£o o $CP deve ser
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

      # Este comando retorna a situaÃ§Ã£o de erro em duas funÃ§Ãµes do PHP:
      # _errno() - NÃºmero do Erro
      # _error() - Texto com a mensagem de erro
      # Desvio condicional para as situaÃ§Ãµes de erro
      if ( mysqli_errno($linkmy)==0 )
      { # A transaÃ§Ã£o deve ser concluida e o laÃ§o de repetiÃ§Ã£o deve ser 'quebrado'
        mysqli_query($linkmy,"COMMIT");
        $trytrans=FALSE;
        $mens="Registro de mÃ©dicos com cÃ³digo='$CP' foi incluÃ­do com sucesso";
        mostraregistro("$CP");
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
fimdepagina("Incluir","fabricantesincluir.php",FALSE);
?>