<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
 
    if(request.getParameter("submit")!=null)
    {
        String name = request.getParameter("sname");
        String course = request.getParameter("course");
        String fee = request.getParameter("fee");
     
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/schooll","root","");
        pst = con.prepareStatement("insert into records(stname,course,fee)values(?,?,?)");
        pst.setString(1, name);
        pst.setString(2, course);
        pst.setString(3, fee);
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
        
        <br>
        <h1>*************S͟T͟U͟D͟E͟N͟T͟ B͟U͟S͟ M͟A͟N͟A͟G͟E͟M͟E͟N͟T͟ S͟Y͟S͟T͟E͟M͟ U͟S͟I͟N͟G͟ J͟S͟P͟**************</h1>
        </br>
        <br>
        
       
        <div class="row">
            
             <div class="col-sm-4">
                 <form method="POST" acton="#" >
                    
                    <div alight="left">
                        <label class="form-label">Student Name</label>
                        <input type="text" class="form-control" placeholder="Student Name" name="sname" id="sname" required >
                     </div>
                    <br>   
                    <div alight="left">
                        <label class="form-label">Place</label>
                       <select name = "course" id="course" class = "form-control">
                           <option>Select Place</option>
                           <option>Kashmiri Gate</option>
                           <option>Anand Vihar</option>
                           <option>Subhash Nagar</option>
                           <option>Dawrka</option>
                           <option>Tagore Garden</option>
                           <option>Rajauri Garden</option>
                          </select> 
                           
                     </div>
                     </br>
                     
                    
                     <div alight="right">
                        <label class="form-label">Fee</label>
                        <input type="text" class="form-control" placeholder="Fee" name="fee" id="fee" required >
                     </div>
                   
                     </br>
                     <div alight="right">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                      
                     <div align="right">
                             
                             <p><a href="login.jsp">LOGOUT</a></p>   
                             
                             
                         </div>
                     
                     
                     
                     
                </form>
            </div>
                 
             <div class="col-sm-8">
                 <div class="panel-body">
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%">
                         <thead>
                             <tr>
                                    <th>Student Name</th>
                                    <th>Place</th>
                                    <th>Fee</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                             </tr>  
                             <%
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/schooll","root","");
    
                                 String query = "select * from records";
                                 Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("id");
                                        
                             %>
                             
                             
                             
                            
                             <tr>
                                 <td><%=rs.getString("stname") %></td>
                                 <td><%=rs.getString("course") %></td>
                                 <td><%=rs.getString("fee") %></td>
                                 <td><a href="update.jsp?id=<%=id%>"Edit</a>Edit</td>
                                 <td><a href="delete.jsp?id=<%=id%>"Delete</a>Delete</td>
                             </tr>
                             
                             <%
                               
                             }
                          
                             %>
                             
                             
                             
                             
                     </table>
                 </div>
            </div>
         </div>
        
    </body>
</html>
