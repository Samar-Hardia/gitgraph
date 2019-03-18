<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

            <%
                     try{  
         Class.forName("com.mysql.jdbc.Driver"); 
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plotters","root","root");
   String name = request.getParameter("Uname");
   String email = request.getParameter("email");
   String pass = request.getParameter("password");
   Statement stmt = con.createStatement();
   String sql = "SELECT * FROM users WHERE email =\"" + email + "\"";
   ResultSet res = stmt.executeQuery(sql);
   if(!res.next()){
       out.print("email available");
       if((name!=null)&&(pass!=null)){
   String query = "INSERT INTO users SET UName=\"" + name + "\" ,password= \"" + pass +"\" ,email=\"" + email + "\" ,active = 0;";
   if(stmt.executeUpdate(query)>0){
       session.setAttribute("mail", email);
       response.sendRedirect("Confirmation.jsp");
   }else{
       out.print("error");
   }
       }
   }else{
      
     //out.print("<script>alert(\"user name already exists\");</script>");
     out.print("email already exists.<a href=\"Login.jsp\">login</a>");
       
   }
                     }
                    catch(Exception e){
                   //out.print(e);
                    }  
    %>