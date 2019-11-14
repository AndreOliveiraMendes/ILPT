<?php
#--------------------------------------------------------------------------------------------------------------------------------
# Programa....: medicosconsultar (arquivo medicosconsultar.php)
# Descrição...: Este eh PA-Consultar. Este PA tem 2 'cases': case 1 monta um formulario mostrando a caixa de escolha. No case 2
#               exibe os dados detalhados do registro que foi escolhido.
# Objetivo....: Mostrar uma caixa de selecao e a seguir os detalhes do registro escolhido.
# Autor.......: JMH - Copie, mas diga que fez!
# Criação.....: 2019-10-23
# Atualização.: 2019-10-24 - Estruturacao do PA e desenvolvimento das chamadas das funcoes.
#               2019-10-24 - Teste de conformidade
#--------------------------------------------------------------------------------------------------------------------------------
require_once("../../funcoes/toolkit.php");
require_once("./fabricantesfuncoes.php");
iniciapagina("fabricantes","Consulta","#F1F1F1");
# Este é um exemplo de programa recursivo
# Usa-se uma das funções de ambiente do PHP que
# Veririfica se exsite valor em variável ou vetor.
# A função ISSET() retorna True ou False se existe ou não valor em
# uma variável.
$bloco=( ISSET($_POST['bloco']) ) ? $_POST['bloco'] : 1;
# Separador de Blocos Lógicos do programa
switch ($bloco){
	case (1): # chamada da função que monta a caixa de seleção para escolha do registro
		picklist("fabricantesconsultar.php");
		break;
	case (2): # Executando a função que mostra os detalhes do registro escolhido no picklist.
		mostraregistro("$_REQUEST[pkfabricante]");
		botoes("",2,1,0,0);
		break;
}
fimdepagina("Consultar","fabricantesconsultar.php",FALSE);
?>
