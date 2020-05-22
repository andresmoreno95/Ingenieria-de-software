<%-- 
    Document   : EditarEmpleado
    Created on : 21/04/2019, 06:37:55 PM
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
        <title>Editar Empleado</title>
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
                resultset = statement.executeQuery("select * from tbl_empleado where Id="+id);
            } catch (Exception e) {
                                out.println("wrong entry" + e);
                            }
            while (resultset.next()){
        %>
        <div class="container">
            <h1>Modificar Registro</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
                Codigo:
                <input type="text" name="txtCod" class="form-control" value="<%= resultset.getString("Codigo")%>"/><br>
                Nombre:
                <input type="text" name="txtNom" class="form-control" value="<%= resultset.getString("Nombre")%>"/><br>
                Apellido:
                <input type="text" name="txtApe" class="form-control" value="<%= resultset.getString("Apellido")%>"/><br>
                Direccion:
                <input type="text" name="txtDir" class="form-control" value="<%= resultset.getString("Direccion")%>"/><br>
                Telefono:
                <input type="text" name="txtTel" class="form-control" value="<%= resultset.getString("Telefono")%>"/>
                Dependenica:
                <input type="text" readonly="" class="form-control" value="<%= resultset.getString("Dependencia")%>"/><br>
                E-mail:
                <input type="text" name="txtEma" class="form-control" value="<%= resultset.getString("Email")%>"/>
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
    String cod, nom, ape, dir, tel, ema;
       cod=request.getParameter("txtCod");
       nom=request.getParameter("txtNom");
       ape=request.getParameter("txtApe");
       dir=request.getParameter("txtDir");
       tel=request.getParameter("txtTel");
       ema=request.getParameter("txtEma");
       if(nom!=null && cod!=null && dir!=null && tel!=null && ape!=null && ema!=null){
           //statement = connection.prepareStatement("update tbl_empresa set Nombre='"+nom+"', NIT='"+nit+"', Direccion='"+dir+"', Telefono='"+tel+"', Titular='"+tit+"' where Id="+id);
           statement.executeUpdate("update tbl_empleado set Codigo='"+cod+"', Nombre='"+nom+"', Apellido='"+ape+"', Direccion='"+dir+"', Telefono='"+tel+"', Email='"+ema+"'  where Id="+id);
           //JOptionPane.showMessageDialog(null,"Se Agrego Correctamete");           
           response.sendRedirect("ListarEmpleado.jsp");
           
       }   
%>

