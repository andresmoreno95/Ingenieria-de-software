<%-- 
    Document   : EditarEmpresa
    Created on : 16/04/2019, 11:13:10 PM
    Author     : Nicolas
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%ResultSet resultset = null;%>
<%Connection connection= null;%>
<%Statement statement = null;%>
<%int id = Integer.parseInt(request.getParameter("id")); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <% //Conexión con la base de datos
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                /*Connection*/ connection
                    = DriverManager.getConnection("jdbc:mysql://localhost/empresa?user=root&password=");
                /*Statement */statement = connection.createStatement();
                // Se toma de la base de datos la tabla "tbl_empresa"
                //int id=Integer.parseInt(request.getParameter("id"));
                resultset = statement.executeQuery("select * from tbl_empresa where Id="+id);
            } catch (Exception e) {
                                out.println("wrong entry" + e);
                            }
            while (resultset.next()){
        %>
        <div class="container">
            <h1>Modificar Registro</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
                NIT:
                <input type="text" name="txtNit" class="form-control" value="<%= resultset.getString("NIT")%>"/><br>
                Nombre:
                <input type="text" name="txtNom" class="form-control" value="<%= resultset.getString("Nombre")%>"/><br>
                Direccion:
                <input type="text" name="txtDir" class="form-control" value="<%= resultset.getString("Direccion")%>"/><br>
                Telefono:
                <input type="text" name="txtTel" class="form-control" value="<%= resultset.getString("Telefono")%>"/><br>
                Titular:
                <input type="text" name="txtTit" class="form-control" value="<%= resultset.getString("Titular")%>"/>
                <br>
                <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>
                <a href="index1.jsp">Regresar</a>
            </form>
        </div>
 
        <% }/* Fin del while */ %>
    </body>
</html>
<%
    //int id = Integer.parseInt(request.getParameter("id")); 
    String nom, nit, dir, tel, tit;
       nom=request.getParameter("txtNom");
       nit=request.getParameter("txtNit"); 
       dir=request.getParameter("txtDir");
       tel=request.getParameter("txtTel");
       tit=request.getParameter("txtTit");
       if(nom!=null && nit!=null && dir!=null && tel!=null && tit!=null){
           //statement = connection.prepareStatement("update tbl_empresa set Nombre='"+nom+"', NIT='"+nit+"', Direccion='"+dir+"', Telefono='"+tel+"', Titular='"+tit+"' where Id="+id);
           statement.executeUpdate("update tbl_empresa set Nombre='"+nom+"', NIT='"+nit+"', Direccion='"+dir+"', Telefono='"+tel+"', Titular='"+tit+"' where Id="+id);
           //JOptionPane.showMessageDialog(null,"Se Agrego Correctamete");           
           response.sendRedirect("ListarEmpresa.jsp");
           
       }   
%>