package br.com.caelum.agenda.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

@WebServlet("/cadastroContato")
public class CadastroContatoServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
				
		PrintWriter out = resp.getWriter();
		
		String nome = req.getParameter("nome");
		String endereco = req.getParameter("endereco");
		String email = req.getParameter("email");
		String dataEmTexto = req.getParameter("dataNascimento");
		
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEndereco(endereco);
		contato.setEmail(email);
		
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			Date data = sdf.parse(dataEmTexto);
			Calendar dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(data);
			contato.setDataNascimento(dataNascimento);
		} catch (ParseException e) {
			out.println("Erro na conversao da data");
			return;
		}
		
		ContatoDao dao = new ContatoDao();
		dao.insere(contato);
		
		out.println("<html><body><h3>Salvei o contato</h3></body></html>");
	}
}



















