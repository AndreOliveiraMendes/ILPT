package br.com.sisvendatarde.daotest;

import java.util.List;
import org.junit.Ignore;
import org.junit.Test;

import br.com.sisvendatarde.dao.FornecedorDao;
import br.com.sisvendatarde.domain.Fornecedor;

public class FornecedorDaoTest {
	@Test
	public void salvar() {
	
		// Instanciação de objeto referente a fornecedor, para salvar no banco de dados
		Fornecedor fornecedor = new Fornecedor();
		
		// Preenchimento do campo respectivo à tabela 'Fornecedor'
		fornecedor.setNome("StarPlatinum2");
		
		//Realização de inserção no banco de dados
		FornecedorDao fornecedorDao = new FornecedorDao();
		fornecedorDao.salvar(fornecedor);
		
		//Mensagem de sucesso
		System.out.println("Êxito no cadastro do fornecedor");
	}
	@Test
	public void listar() {
	
		FornecedorDao fornecedorDao = new FornecedorDao();
		List<Fornecedor> resultado = fornecedorDao.listar();
		System.out.println("Total de registros:" + resultado.size());
		for (Fornecedor fornecedor : resultado) {
			System.out.println(fornecedor.getNome());
		}
	}
	@Test
	public void buscar() {
	
		Long codigo = 2L;
		FornecedorDao fornecedorDao = new FornecedorDao();
		List<Fornecedor> resultado = fornecedorDao.listar();
		System.out.println("Total de registros:" + resultado.size());
		for (Fornecedor fornecedor : resultado) {
			System.out.println(fornecedor.getNome());
		}
	}
	@Test
	public void excluir() {
	
		Long codigo = 2L;
		FornecedorDao fornecedorDao = new FornecedorDao();
		Fornecedor fornecedor = fornecedorDao.buscar(codigo);
	
		if (fornecedor == null) {
			System.out.println("Nenhum Registro encontrado");
		} else {
			fornecedorDao.excluir(fornecedor);
			System.out.println("Registro encontrado");
			System.out.println(fornecedor.getNome());
		}
	
	}
	@Test
	public void editar() {
	
		Long codigo = 1L;
		FornecedorDao fornecedorDao = new FornecedorDao();
		Fornecedor fornecedor = fornecedorDao.buscar(codigo);
		
		if (fornecedor == null) {
			System.out.println("Nenhum Registro encontrado");
		} else {
			fornecedor.setNome("NomeNovo");
			fornecedorDao.update(fornecedor);
			System.out.println("Registro encontrado");
			System.out.println(fornecedor.getNome());
		}
	}
}