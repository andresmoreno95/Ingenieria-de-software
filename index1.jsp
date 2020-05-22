<%-- 
    Document   : index1
    Created on : 10/04/2019, 05:23:01 PM
    Author     : BOG-A409-E-010
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <LINK REL=StyleSheet HREF="css/style.css" TYPE="text/css" MEDIA=screen>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
    </head>
    <body>
        <h1 align="center">MENU</h1>
        <div class="container">
            <div class="container__item">
                <form action="ServletRegistro" method="POST">
                    <table class="steelBlueCols">
                        
                        <thead>
                            <tr> <th colspan="2"> <br>  Menu </br></th> </tr>
                        </thead>
                        <tbody>
                            <tr> <td colspan="2" align="center"><a href="index.jsp" class="btn btn--primary btn--inside uppercase" >Registrar Enmpresa</a></td></tr>
                            <tr> <td colspan="2" align="center"><a href="Dependencia.jsp" class="btn btn--primary btn--inside uppercase" >Dependencias</a></td></tr>
                            <tr> <td colspan="2" align="center"><a href="Empleados.jsp" class="btn btn--primary btn--inside uppercase" >Registrar Empleado</a></td></tr>
                            <tr> <td colspan="2" align="center"><a href="MisionVision.jsp" class="btn btn--primary btn--inside uppercase" >Mision & Vision</a></td></tr>
                            <tr> <td colspan="2" align="center"><a href="ObjetivosEstrategias.jsp" class="btn btn--primary btn--inside uppercase" >Objetivos & Estrategias</a></td></tr>
                            <tr> <td colspan="2" align="center"><a href="Indicadores.jsp" class="btn btn--primary btn--inside uppercase" >Indicadores</a></td></tr>
                            <tr> <td colspan="2" align="center"><a href="DatosIndicador.jsp" class="btn btn--primary btn--inside uppercase" >Datos de indicadores</a></td></tr>
                            <tr> <td colspan="2" align="center"><a href="Graficas.jsp" class="btn btn--primary btn--inside uppercase" >Mostrar Grafica</a></td></tr>
                        </tbody>
                    </table>     
                </form>
            </div>
        </div>
    </body>
</html>
