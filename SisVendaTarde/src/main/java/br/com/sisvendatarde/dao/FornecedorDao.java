package br.com.sisvendatarde.dao;

import org.junit.Test;

import br.com.sisvendatarde.domain.Fornecedor;

public class FornecedorDao extends GenericDao<Fornecedor>{
	
	@Test
	public void salva() {
		Fornecedor fornecedor = new Fornecedor();
		
		fornecedor.setNome("StarPlatinum");
		
		FornecedorDao fornecedorDao = new FornecedorDao();
		fornecedorDao.salvar(fornecedor);
		
		System.out.println("exito no cadastro do fornecedor");
	}
}
