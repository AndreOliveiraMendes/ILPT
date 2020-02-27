package br.com.sisvendatarde.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Produto extends GenericDomain {
	
	@Column(length = 50, nullable = false)
	private String descriçao;
	
	@Column(nullable = false)
	private float valor;
	
	@ManyToOne
	@JoinColumn(nullable = false)
	private Fornecedor fornecedor;

	public String getDescriçao() {
		return descriçao;
	}

	public void setDescriçao(String descriçao) {
		this.descriçao = descriçao;
	}

	public float getValor() {
		return valor;
	}

	public void setValor(float valor) {
		this.valor = valor;
	}

	public Fornecedor getFornecedor() {
		return fornecedor;
	}

	public void setFornecedor(Fornecedor fornecedor) {
		this.fornecedor = fornecedor;
	}
	
	
}
