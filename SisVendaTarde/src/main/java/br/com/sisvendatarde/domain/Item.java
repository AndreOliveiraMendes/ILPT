package br.com.sisvendatarde.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Item extends GenericDomain {
	
	@Column(nullable = false)
	private int quantidadeI;
	
	@Column(nullable = false)
	private float valorI;
	
	@ManyToOne
	@JoinColumn(nullable = false)
	Produto produto;

	public int getQuantidadeI() {
		return quantidadeI;
	}

	public void setQuantidadeI(int quantidadeI) {
		this.quantidadeI = quantidadeI;
	}

	public float getValorI() {
		return valorI;
	}

	public void setValorI(float valorI) {
		this.valorI = valorI;
	}

	public Produto getProdutos() {
		return produto;
	}

	public void setProdutos(Produto produto) {
		this.produto = produto;
	}
	
	
}
