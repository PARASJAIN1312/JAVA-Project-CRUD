<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
 
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String name = request.getParameter("sname");
        String course = request.getParameter("course");
        String fee = request.getParameter("fee");
     
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/schooll","root","");
        pst = con.prepareStatement("update records set stname = ?,course = ?,fee = ? where id = ?");
        pst.setString(1, name);
        pst.setString(2, course);
        pst.setString(3, fee);
        pst.setString(4, id);
        pst.executeUpdate();  
        
        %>
        
        <script>  
        
            alert("Record Adddeddddd");
            
        </script>
        
         <%            
            }
        %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" tylesheet" type="text/css"/>
        
        
    </head>
    <body>
        <h1>!!!!UPDATE!!!!</h1>
        
        
        <div class="row">
            
             <div class="col-sm-4">
                 <form method="POST" acton="#" >
                     <% 
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/schooll","root","");
                     
                        String id = request.getParameter("id");
                        
                        pst = con.prepareStatement("select * from records where id = ? ");
                        pst.setString(1,id);
                        
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                     
                     
                     
                     %>
                    <div alight="left">
                        <label class="form-label">Student Name</label>
                        <input type="text" class="form-control" placeholder="Student Name" value="<%= rs.getString("stname")%>" name="sname" id="sname" required >
                     </div>
                        
                    <div alight="left">
                        <label class="form-label">Place</label>
                        <select name = "course" id="course" class = "form-control"  value="<%= rs.getString("course")%>" >
                         <option>Select Place</option>
                           <option>Kashmiri Gate</option>
                           <option>Anand Vihar</option>
                           <option>Subhash Nagar</option>
                           <option>Dawrka</option>
                           <option>Tagore Garden</option>
                           <option>Rajauri Garden</option>
                          </select> 
                     </div>
                        
                     <div alight="left">
                        <label class="form-label">Fee</label>
                        <input type="text" class="form-control" placeholder="Fee" name="fee" id="fee" required >
                         
                     </div>
                    <% }  %>
                    
                         </br>
                        
 
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div> 
                         <>
                         <div align="right">
                             
                             <p><a href="index.jsp">Click Back</a></p>   
                             
                             
                         </div>
                         
                        
                </form>
            </div>
        
        </div>
        
        
        
        
        
    </body>
</html>
