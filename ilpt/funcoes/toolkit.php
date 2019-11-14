<?php
#----------------------------------------------------------------------------------------------------------------------
# Programa....: funcoes
# Descrição...: Este eh o toolkit (conjunto de funcoes).
#               Sao as funcoes que, de modo mais comum, sao utilizadas em outros programas.
#               Todas sao declaradas como funcoes e passam a ficar "disponiveis" no programa que referenciar o
#               toolkit.php
# Objetivo....: Declarar e disponibilizar as funções mais comuns no sistema.
# Autor.......: JMH
# Criação.....: 2018-09-24
# Atualização.: 2018-09-24 - Criacao e desenvolvimento das funcoes: iniciapagina() e fimdepagina()
#               2018-10-01 - Inclusao da função de conexao com o banco de dados MySQL.
#               2018-10-02 - Comandos para ajuste dos caracteres acentuados em portugues, nas funcoes:
#                            iniciapagina e conecta_my.
#----------------------------------------------------------------------------------------------------------------------
function iniciapagina($tabela,$acao,$cordefundo)
{ # Função.....: botoes
  # Descricao..: Esta funcao escreve as TAGs HTML iniciais usadas nos PAs de Ger. de Medicos
  # Parametros.: Esta funcao recebe os parametros:
  #              $tabela....: Texto identificando a tabela focada no PA.
  #              $acao......: Texto indicando a acao do PA.
  #              $cordefundo: Texto ou codigo da cor de fundo usada nas telas do PA.
  # Autor......: JMH - Use! Mas fale quem fez!
  # Criação....: 2019-10-01
  # Atualização: 2019-10-01 - Desenvolvimento e teste da função.
  #              2019-11-10 - Inseri os comandos que escrevem a tag STYLE para formatar os BUTTONs usados em botoes.
  #--------------------------------------------------------------------------------------------------------------------
  printf("<!DOCTYPE html>\n");
  printf("<html lang='pt-br'>\n");
  printf(" <head>\n");
  printf("  <title>GerenciamentoM&eacute;dicos</title>\n");
  printf("  <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />\n");
  printf("  <style>\n");
  printf("   button{background-color: $cordefundo;border: none;color: black;padding: 0px 0px;text-align: center;text-decoration: none;display: inline;font-size: 12px;margin: 0px 10px;cursor: pointer;}\n");
  printf("  </style>\n");
  printf(" </head>\n");
  printf(" <body bgcolor=$cordefundo>\n");
  printf("  $tabela-$acao<br>\n");
}
function fimdepagina($acao,$prg,$center)
{
  #--------------------------------------------------------------------------------------------------------------------
  $linharodape="<font size=2 color='gray'>".$acao." - Resolu&ccedil;&atilde;o m&iacute;nima de 1280x720 &copy; Copyright ".date('Y').", FATEC Ourinhos - 4&ordm;ADS - $prg</font>";
  $linharodape=($center=='TRUE') ? "<center>".$linharodape."</center>" : $linharodape;
  printf("  $linharodape\n");
  printf(" </body>\n</html>\n");
}
function botoes($acao,$sair,$voltar,$limpar,$escolher)
{ # Função.....: botoes
  # Descricao..: Esta funcao monta a barra de botoes usados nos PAs de Ger. de Medicos
  # Parametros.: Esta Funcao recebe os parametros:
  #              $acao....: Texto que aparece no botao SUBMIT.
  #              $sair....: Quantidade de saltos em telas para sair do PA.
  #              $voltar..: Numero (1|0) indicando salto para a tela anterior.
  #              $limpar..: Numero (1|0 - TRUE|FALSE) indicando se o botao RESET deve ser apresentado ou nao.
  #              $escolher: Quantidade de saltos para retornar para a tela de escolha de registro
  #                         (Incluir e Listar recebem '0' neste parametro)
  # Autor......: JMH - Use! Mas fale quem fez!
  # Criação....: 2019-11-08
  # Atualização: 2019-11-08 - Desenvolvimento e teste da funcao.
  #              2019-11-27 - Alterei o codigo para usar somente button, assim podemos usar CSS no iniciapagina
  #                           para ter a tela mais limpa e usar botoes de formaularios.
  #--------------------------------------------------------------------------------------------------------------------
  $barra="";
  $barra=($acao<>"") ? $barra."<button type='submit'>$acao</button>\n" : $barra;
  $barra=($limpar) ? $barra."<button type='reset'>Reset Form</button>\n" : $barra;
  $barra=($voltar>0) ? $barra."<button type='button' onclick='history.go(-1)'>Voltar</button>\n" : $barra;
  $barra=($sair>0) ? $barra."<button type='button' onclick='history.go(-$sair)'>Sair</button>\n" : $barra;
  $barra=($escolher>0) ? $barra."<button type='button' onclick='history.go(-$escolher)'>Escolher</button>\n" : $barra;
  printf("$barra<br>\n");
}
function conectamy($host,$user,$senha,$dbname)
{ # Função.....: conectamy
  # Descrição..: Esta funcao faz monte a conexao com o SGBD MySQL
  # Observação.: Recebe 4 parametros: $host   - Nome do Host que executa o servico do SGBD 
  #                                             (localhost, para o servidor local)
  #                                   $user   - Nome do usuario que tem acesso permitido na Base 
  #                                             (ver permissoes com o DBA do SGBD)
  #                                   $senha  - Senha de conexao do usuario na base (e no SGBD).
  #                                   $dbname - Nome da Base de Dados que sera acessada
  # Autor......: JMH - Use! Mas fale quem fez!
  # Criação....: 2013-05-02
  # Alteração..: 2018-10-01 - Desenvolvimento inicial
  #--------------------------------------------------------------------------------------------------------------------
  # Ajustando os caracteres acentuados
  header('content-type: text/html; charset=utf-8;');
  # Fazendo a conexao com o banco de dados.
  # Atribuicao de: - Nome de servidor, Nome do usuario, Senha do usuario e Base de dados
  global $linkmy;
  $linkmy = mysqli_connect($host,$user,$senha,$dbname) or die ("A conex&atilde;o com o BD n&atilde;o deu certo");
  # Se quiser verificar a string de conexao, tire o comentario da linha abaixo e 
  # recarregue o PA que referencia o setfuncoes.php
  # printf("host=$host, user=$user,senha=$senha,dbname=$dbname<br>");
  # Acertando a tabela de caracteres que sera usada no MySQL
  mysqli_query($linkmy,"SET NAMES 'utf8'");
  mysqli_query($linkmy,"SET character_set_connection=utf8");
  mysqli_query($linkmy,"SET character_set_client=utf8");
  mysqli_query($linkmy,"SET character_set_results=utf8");
}
#----------------------------------------------------------------------------------------------------------------------
## Aqui terminam as funções
#----------------------------------------------------------------------------------------------------------------------
## Começa o bloco principal do setfuncoes
# Executando a conexao com o banco de dados.
conectamy('localhost','root','','ilp20192tn');
# Note: Os valores dos argumentos devem ser compativeis com as caracteristicas do computador onde 'roda' a aplicacao.
# Foi deixado "root", "", "ilp20192" (usuario=root, senha=123456 (sem senha) e nome da base ilp, 
# por conta da maquina onde foi escrita este programa
# Altere estes valores para o seu computador.
?>
