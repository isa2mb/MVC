package org.essilab.module.user.actions;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.essilab.module.user.UserService;
import org.essilab.module.user.model.User;
import org.essilab.servlet.mvc.example.IAction;

public class UserInsert implements IAction{

	UserService service = UserService.getInstance();
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		//System.out.println("");
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String mail = request.getParameter("mail");
		String mdp = request.getParameter("mdp");
		//System.out.println(json);
		//ObjectMapper mapper = new ObjectMapper();
		try {
			//User u = mapper.readValue(json, User.class);
			User u = new User(nom, prenom, mail,mdp);
			boolean valid = service.userInsert(u);
			//System.out.println("User inséré !");
			//response.getWriter().print("{\"success\":true}");
			//response.getWriter().print("Vous allez recevoir un mail pour activer votre compte");
			//response.sendRedirect("index");
			response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    if(valid)
		    {
		    	response.getWriter().write("{\"success\":true}");
			    response.getWriter().write(" Vous allez recevoir un mail pour activer votre compte ");
		    }
		    else
		    {
		    	response.getWriter().write("{\"failure\":false}");
		    	response.getWriter().write(" Erreur! adresse déjà connue, vérifier votre adresse e-mail ");
		    }
		} catch (IOException e) {
			e.printStackTrace();
			try {
				response.getWriter().write("{\"success\":true}");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			request.setAttribute("render", false);
		}
		request.setAttribute("render", false);
	}

}
