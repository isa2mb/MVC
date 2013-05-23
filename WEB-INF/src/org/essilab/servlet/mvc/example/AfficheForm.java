package org.essilab.servlet.mvc.example;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AfficheForm implements IAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("Title", "Inscription");

	}

}
