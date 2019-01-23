package br.com.caelum.agenda.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PrimeiraLogica implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("Executando a logica...");
		System.out.println("Retornando o nome da página JSP...");
		return "primeira-logica.jsp";
	}
}
