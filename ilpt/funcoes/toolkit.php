<?php
#--------------------------------------------------------------------------------------------------------------------------------
# Programa....: funcoes gerais
# DescriÃ§Ã£o...: Este Ã© o conjunto de funÃ§Ãµes. SÃ£o as funÃ§Ãµes que de modo mais comum serÃ£o utilizadas em outros programas.
#               Todas sÃ£o declaradas como funÃ§Ãµes e passa a ficar "disponÃ­veis" no programa que referenciar o toolkit.php
# Objetivo....: Declarar e disponibilizar as funÃ§Ãµes mais comuns no sistema.
# Autor.......: JMH - Copie, mas diga que fez!
# CriaÃ§Ã£o.....: 2018-10-24
# AtualizaÃ§Ã£o.: 2018-10-24 - CriaÃ§Ã£o e desenvolvimento das funÃ§Ãµes: iniciapagina() e fimdepagina() (NÃ£o apresentado aos alunos)
#               2018-10-24 - InclusÃ£o da funÃ§Ã£o de conexÃ£o com o banco de dados MySQL. (NÃ£o apresentado aos alunos)
#               2018-10-24 - Comandos para ajuste dos caracteres acentuados em portuguÃªs, nas funÃ§Ãµes: iniciapagina e conecta_my.
#               2019-10-24 - Adaptando o texto para um comando de printf() para todas as TAGs do iniciapagina()
#               2019-10-24 - Ajustes na funÃ§Ã£o iniciapagina() - revisÃ£o dos comentÃ¡rios.
#               2019-10-24 - Reescrevi a funÃ§Ã£o fimdepagina e deixei igual Ã  funÃ§Ã£o da turma da noite.
#--------------------------------------------------------------------------------------------------------------------------------
## FunÃ§Ã£o iniciapagina()
function iniciapagina($tabela,$acao,$cordefundo)
{ # Esta funÃ§Ã£o recebe valores em 3 parÃ¢metros:
  # $tabela - Nome da Tabela,
  # $acao - AÃ§Ã£o do PA que aciona a funÃ§Ã£o - ICAEL
  # $cordefundo - Cor de Fundo que serÃ¡ exibida
  # AlÃ©m disso faz os ajustes de acentuÃ§Ã£o a serem exibidos na tela.
  printf("<!DOCTYPE html>\n
          <html lang='pt-br'>\n
           <head>\n
            <title>GerenciamentoM&eacute;dicos</title>\n
            <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />\n
           </head>\n
           <body bgcolor=$cordefundo>\n
            $tabela-$acao<br>\n");
}
################
## FunÃ§Ã£o: fimdepagina
function fimdepagina($acao,$prg,$center)
{
  $linharodape="<font size=2 color='gray'>".$acao." - Resolu&ccedil;&atilde;o m&iacute;nima de 1280x720 &copy; Copyright ".date('Y').", FATEC Ourinhos - 4&ordm;ADS - $prg</font>\n";
  $linharodape=($center=='TRUE') ? "<center>".$linharodape."</center>" : $linharodape;
  printf("$linharodape\n");
  printf("    </body>\n</html>\n");
}
################
## FunÃ§Ã£o: conecta
function conectabase($host,$user,$senha,$nomebase)
{ # Aqui se escreve o trecho de cÃ³digo que faz a conexÃ£o com o BD (MariaDb).
  # O PHP dispÃµe de funÃ§Ãµes de ambiente para comunicar-se com outros serviÃ§os.
  # para conexÃ£o com o MariaDB o PHOP usa as funÃ§Ãµes iniciadas por mysqli_
  # entre a FA existe a de conexÃ£o com o BD que recebe 4 parÃ¢metros.
  # Host = nome do servidor
  # nomebase = Nome da base de dados
  # username = nome do usuÃ¡rio que acessa o bd
  # password = senha de acesso do usuÃ¡rio no bd.

  # A variÃ¡vel que vai receber o ponteiro de memÃ³ria deve ser 'vista' por todos os programas que serÃ£o executados no PHP
  # 'antes' e 'depois' de feita a conexÃ£o. Por isso precisamos 'globalizar' a variÃ¡vel.
  global $linkmy;
  $linkmy = mysqli_connect($host,$user,$senha,$nomebase) or die ("A conex&atilde;o com o BD n&atilde;o deu certo");
  # Se quiser verificar a string de conexÃ£o, tire o comentÃ¡rio da linha abaixo e recarregue o PA que referencia o setfuncoes.php
  # printf("host=$host, user=$user,senha=$senha,nomebase=$nomebase<br>");
  # Nas camadas de serviÃ§os existem trocas de mensagens com caracteres acentuados.
  # Ã© necessÃ¡rio acertar as tabelas de simbolos desde a camada do cliente atÃ© as tabelas do servidor de dados.
  # Acertando a tabela de caracteres que sera usada no MySQL
  mysqli_query($linkmy,"SET NAMES 'utf8'");
  mysqli_query($linkmy,"SET character_set_connection=utf8");
  mysqli_query($linkmy,"SET character_set_client=utf8");
  mysqli_query($linkmy,"SET character_set_results=utf8");
}
# Aqui termina a declaraÃ§Ã£o das funÃ§Ãµes do TOOLKIT.
# Pode-se executar a conexÃ£o com o BD neste arquivo tornando desnecessÃ¡rio executar a
# conexÃ£o em cada PA. 
# Podemos assim 'esconder' do programador os dados de conexÃ£o do PHP com o BD.

conectabase('localhost','root','','ilp20192tn');

?>