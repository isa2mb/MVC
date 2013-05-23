<%@ page pageEncoding="UTF-8" %>

<% 
 out.flush();
String url =(String) request.getAttribute("url");
 request.getRequestDispatcher("/WEB-INF/views/"+url+".jsp")
         .include(request, response);
%>

<!-- out.flush();
request.getRequestDispatcher("/WEB-INF/views/"+request.getAttribute("url")+".jsp")
        .include(request, response);
        
         out.flush();
String url =(String) request.getAttribute("url");
 request.getRequestDispatcher("/WEB-INF/views/"+url+".jsp")
         .include(request, response); -->
