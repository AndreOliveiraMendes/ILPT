<?php
#--------------------------------------------------------------------------------------------------------------------------------
# Programa....: funcoes gerais
# Descrição...: Este é o conjunto de funções. São as funções que de modo mais comum serão utilizadas em outros programas.
#               Todas são declaradas como funções e passa a ficar "disponíveis" no programa que referenciar o toolkit.php
# Objetivo....: Declarar e disponibilizar as funções mais comuns no sistema.
# Autor.......: JMH - Copie, mas diga que fez!
# Criação.....: 2018-10-24
# Atualização.: 2018-10-24 - Criação e desenvolvimento das funções: iniciapagina() e fimdepagina() (Não apresentado aos alunos)
#               2018-10-24 - Inclusão da função de conexão com o banco de dados MySQL. (Não apresentado aos alunos)
#               2018-10-24 - Comandos para ajuste dos caracteres acentuados em português, nas funções: iniciapagina e conecta_my.
#               2019-10-24 - Adaptando o texto para um comando de printf() para todas as TAGs do iniciapagina()
#               2019-10-24 - Ajustes na função iniciapagina() - revisão dos comentários.
#               2019-10-24 - Reescrevi a função fimdepagina e deixei igual à função da turma da noite.
#--------------------------------------------------------------------------------------------------------------------------------
#######################################################################################################################
## Função iniciapagina()
function iniciapagina($tabela,$acao,$cordefundo)
{ # Esta função recebe valores em 3 parâmetros:
  # $tabela - Nome da Tabela,
  # $acao - Ação do PA que aciona a função - ICAEL
  # $cordefundo - Cor de Fundo que será exibida
  # Além disso faz os ajustes de acentução a serem exibidos na tela.
  printf("<!DOCTYPE html>\n
          <html lang='pt-br'>\n
           <head>\n
            <title>GerenciamentoM&eacute;dicos</title>\n
            <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />\n
           </head>\n
           <body bgcolor=$cordefundo>\n
            $tabela-$acao<br>\n");
}
#######################################################################################################################
## Função: fimdepagina
function fimdepagina($acao,$prg,$center)
{
  $linharodape="<font size=2 color='gray'>".$acao." - Resolu&ccedil;&atilde;o m&iacute;nima de 1280x720 &copy; Copyright ".date('Y').", FATEC Ourinhos - 4&ordm;ADS - $prg</font>\n";
  $linharodape=($center=='TRUE') ? "<center>\n".$linharodape."</center>\n" : $linharodape;
  printf("$linharodape\n");
  printf("    </body>\n</html>\n");
}
#######################################################################################################################
## Função: conecta
function conectabase($host,$user,$senha,$nomebase)
{ # Aqui se escreve o trecho de código que faz a conexão com o BD (MariaDb).
  # O PHP dispõe de funções de ambiente para comunicar-se com outros serviços.
  # para conexão com o MariaDB o PHOP usa as funções iniciadas por mysqli_
  # entre a FA existe a de conexão com o BD que recebe 4 parâmetros.
  # Host = nome do servidor
  # nomebase = Nome da base de dados
  # username = nome do usuário que acessa o bd
  # password = senha de acesso do usuário no bd.

  # A variável que vai receber o ponteiro de memória deve ser 'vista' por todos os programas que serão executados no PHP
  # 'antes' e 'depois' de feita a conexão. Por isso precisamos 'globalizar' a variável.
  global $linkmy;
  $linkmy = mysqli_connect($host,$user,$senha,$nomebase) or die ("A conex&atilde;o com o BD n&atilde;o deu certo");
  # Se quiser verificar a string de conexão, tire o comentário da linha abaixo e recarregue o PA que referencia o setfuncoes.php
  # printf("host=$host, user=$user,senha=$senha,nomebase=$nomebase<br>");
  # Nas camadas de serviços existem trocas de mensagens com caracteres acentuados.
  # é necessário acertar as tabelas de simbolos desde a camada do cliente até as tabelas do servidor de dados.
  # Acertando a tabela de caracteres que sera usada no MySQL
  mysqli_query($linkmy,"SET NAMES 'utf8'");
  mysqli_query($linkmy,"SET character_set_connection=utf8");
  mysqli_query($linkmy,"SET character_set_client=utf8");
  mysqli_query($linkmy,"SET character_set_results=utf8");
}
#######################################################################################################################
#######################################################################################################################
# Aqui termina a declaração das funções do TOOLKIT.
# Pode-se executar a conexão com o BD neste arquivo tornando desnecessário executar a
# conexão em cada PA.
# Podemos assim 'esconder' do programador os dados de conexão do PHP com o BD.
conectabase('localhost','root','','ilp20192tn');
?>
