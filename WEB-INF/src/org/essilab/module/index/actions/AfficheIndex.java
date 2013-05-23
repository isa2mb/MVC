package org.essilab.module.index.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.essilab.servlet.mvc.example.IAction;

public class AfficheIndex implements IAction
{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("Title", "Hello");
		
	}

}
