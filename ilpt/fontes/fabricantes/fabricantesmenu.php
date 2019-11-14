<?php
#--------------------------------------------------------------------------------------------------------------------------------
# Programa....: fabricantesmenu (arquivo fabricantesmenu.php)
# Descrição...: Este eh PA-Menu. Este PA monta uma tabela e em cada celula coloca um form apontnado para oa PAs de Gerenciamento
#               da tabela fabricantes.
# Objetivo....: Declarar e disponibilizar acesso aos PAs de Gerenciamento de fabricantes.
# Autor.......: JMH - Copie, mas diga que fez!
# Criação.....: 2019-11-10
# Atualização.: 2019-11-10 - Criacao e desenvolvimento da estrutura basica do PA.
#               2019-11-10 - Teste de conformidade.
#--------------------------------------------------------------------------------------------------------------------------------
require_once("../../funcoes/toolkit.php");
require_once("./fabricantesfuncoes.php");
iniciapagina("fabricantes","Menu","#FFDEAD");
printf("<table><tr>");
printf("<td><form action='./fabricantesincluir.php' method='post'>
        <input type='submit' value='Incluir'>
        </form></td>");
printf("<td><form action='./fabricantesconsultar.php' method='post'>
        <input type='submit' value='Consultar'>
        </form></td>");
printf("<td><form action='./fabricantesalterar.php' method='post'>
        <input type='submit' value='Alterar'>
        </form></td>");
printf("<td><form action='./fabricantesexcluir.php' method='post'>
        <input type='submit' value='Excluir'>
        </form></td>");
printf("<td><form action='./fabricanteslistar.php' method='post'>
        <input type='submit' value='Listar'>
        </form></td>");
printf("</tr></table>");
# Finalizando a página
fimdepagina("Menu","fabricantesmenu.php",FALSE);
?>