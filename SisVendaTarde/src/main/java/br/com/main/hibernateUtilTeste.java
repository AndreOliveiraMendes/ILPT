package br.com.main;

import org.hibernate.Session;

import br.com.sisvendatarde.util.HibernateUtil;

public class hibernateUtilTeste {

	public static void main(String[] args) {
		
		Session sessao = HibernateUtil.getFabricaDeSessoes().openSession();
		sessao.close();
		HibernateUtil.getFabricaDeSessoes().close();

	}

}
