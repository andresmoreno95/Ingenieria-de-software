<%-- 
    Document   : index
    Created on : 6/03/2019, 03:04:38 PM
    Author     : BOG-A410-E-015
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%ResultSet resultset = null;%>
<!DOCTYPE html>
<html>
    <head>
        <LINK REL=StyleSheet HREF="css/style.css" TYPE="text/css" MEDIA=screen>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title >JSP Page</title>
    </head>
    <body>
        <h1 align="center">FORMULARIO REGISTRO</h1>
        <div class="container">
            <div class="container__item">
                <form action="ServletRegistro" method="POST">
                    <table class="steelBlueCols">
                        
                        <thead>
                            <tr> <th colspan="2"> <br>  REGISTRO </br></th> </tr>
                        </thead>
                        <tbody>
                            <tr> <td>NIT</td> <td><input type="text" class="form__field" name="nit" value="" placeholder="Ingrese NIT" /></td></tr>
                            <tr> <td>Nombre de la empresa</td> <td><input type="text" class="form__field" name="nombreEmpresa" value="" placeholder="Ingrese Nombre" /></td></tr>
                            <tr> <td>Dirección</td> <td><input type="text" class="form__field" name="direccion" value="" placeholder="Ingrese Direccion" /></td></tr>
                            <tr> <td>Teléfono</td> <td><input type="text" class="form__field" name="telefono" value="" placeholder="Ingrese Telefono" /></td></tr>
                            <tr> <td>Nombre del titular de la empresa</td> <td><input type="text" class="form__field" name="nombreTitular" value="" placeholder="Ingrese Nombre Titular" /></td></tr>
                            <tr> <td colspan="2" align="center"><input type="submit" class="btn btn--primary btn--inside uppercase" value="REGISTRAR"/></td></tr>
                            <tr> <td colspan="2" align="center"><input type="reset" class="btn btn--primary btn--inside uppercase" value="Limpiar Campos"/></td></tr>
                            <tr> <td colspan="2" align="center"><a href="index1.jsp" class="btn btn--primary btn--inside uppercase" >Regresar Menu</a></td></tr>
                            <tr> <td colspan="2" align="center"><a href="ListarEmpresa.jsp" class="btn btn--primary btn--inside uppercase" >Listar</a></td></tr>
                        </tbody>
                    </table>
                    
                </form>
            </div>
        </div>
    </body>
</html>
