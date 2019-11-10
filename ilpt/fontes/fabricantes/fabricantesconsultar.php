<?php
#--------------------------------------------------------------------------------------------------------------------------------
# Programa....: medicosconsultar (arquivo medicosconsultar.php)
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
iniciapagina("fabricantes","Consulta","#F1F1F1");
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
    picklist("fabricantesconsultar.php");
    break;
  }
  case (2):
  { # Executando a funÃ§Ã£o que mostra os detalhes do registro escolhido no picklist.
    mostraregistro("$_REQUEST[pkfabricante]");
    break;
  }
}
fimdepagina("Consultar","fabricantesconsultar.php",FALSE);
?>