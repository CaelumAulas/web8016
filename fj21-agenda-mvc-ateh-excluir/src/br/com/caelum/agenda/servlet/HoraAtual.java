package br.com.caelum.agenda.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hora")
public class HoraAtual extends HttpServlet {

	@Override
	public void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		LocalDateTime horaAtual = LocalDateTime.now();
		
		PrintWriter writer = resp.getWriter();
		writer.println("<html>"
				+ "<body><h1>Hora de agora: " + horaAtual + "</h1></body>"
						+ "</html>");
	}
}
