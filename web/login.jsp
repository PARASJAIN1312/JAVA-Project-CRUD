
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        
        <title>JSP Page</title>
    </head>
    <body>
        <h1>*************S͟T͟U͟D͟E͟N͟T͟ B͟U͟S͟ M͟A͟N͟A͟G͟E͟M͟E͟N͟T͟ S͟Y͟S͟T͟E͟M͟ U͟S͟I͟N͟G͟ J͟S͟P͟**************</h1>
        </br>
        </br>
        <h1>LOGIN</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" action="loginv.jsp">
                    <div align="left">
                        <label class="form-label">Username</label>
                        <input type="text" id="uname" name="uname" class="form-control" placeholder="Username" size="30px" required>
                    </div>
                    
                    <div align="left">
                        <label class="form-label">Password</label>
                        <input type="password" id="password" name="password" class="form-control" placeholder="Password" size="30px" required>
                    </div>
                    </br>
                    <div align="left">
                        <input type="submit" id="submit" name="submit" value="submit" class="btn btn-info">
                        <input type="reset" id="reset" name="reset" value="reset" class="btn btn-warning">
                    </div>
                    
                    
                    
                    
                </form>
            </div>
        
             <div class="col-sm-8">
                
                 <img src="images/school-bus-facility.png" alt=""/>
                 
                 
            </div>
        
        
        
        
    </body>
</html>
