<%-- 
    Document   : BorrarEmpresa
    Created on : 21/04/2019, 06:19:01 PM
    Author     : Nicolas
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       //CONECTANOD A LA BASE DE DATOS:
       Connection con;       
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost/empresa?user=root&password=");
       //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
       PreparedStatement ps;       
       int id=Integer.parseInt(request.getParameter("id"));
       ps=con.prepareStatement("delete from tbl_empresa where Id="+id);
       ps.executeUpdate();
       response.sendRedirect("ListarEmpresa.jsp");
       
       %>
    </body>
</html>