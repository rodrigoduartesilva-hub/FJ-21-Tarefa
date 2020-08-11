package br.com.caelum.tarefas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.caelum.tarefas.dao.JdbcUsuarioDao;
import br.com.caelum.tarefas.modelo.Usuario;

@Controller
public class LoginController {
	private final JdbcUsuarioDao usuarioDao;
	
	@Autowired
	public LoginController(JdbcUsuarioDao usuarioDao) {
		this.usuarioDao = usuarioDao;
	}
	
	@RequestMapping("loginForm")
	public String loginForm() {
		return "formulario-login";
	}
	
	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session) {
		if(usuarioDao.existeUsuario(usuario)) {
			session.setAttribute("usuarioLogado", usuario);
			return "menu";
		}
		return "redirect:loginForm";
	}
	

	@RequestMapping("voltarMenu")
	public String volta() {
		return "menu";
	}
	
	@RequestMapping("voltarFormulario")
	public String voltaForm() {
		return "tarefa/formulario";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession sesion) {
		sesion.invalidate();
		return "redirect:loginForm";
	}
	
}
