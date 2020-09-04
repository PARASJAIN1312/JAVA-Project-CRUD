<%
    String username  = request.getParameter("uname");
    String password  = request.getParameter("password");
    
    if(username.equals("paras") && password.equals("123"))
    {
      
       String redirect = "index.jsp";
       response.sendRedirect(redirect);
    }
    else
    {
    out.println("Username or Password do not Match");
    
    
    }







%>