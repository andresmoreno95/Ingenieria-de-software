<%--
    Document   : newjsp
    Created on : 21/05/2019, 03:41:08 PM
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.jfree.chart.ChartFactory" %>
<%@page import="org.jfree.chart.ChartUtilities" %>
<%@page import="org.jfree.chart.JFreeChart" %>
<%@page import="java.io.File" %>
<%@page import="org.jfree.chart.plot.*" %>
<%@page import="java.io.*" %>
<%@page import="org.jfree.data.category.DefaultCategoryDataset" %>
<%@ page import="java.sql.*" %>
<%ResultSet resultset = null;%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grafica de Ventas </title>
    </head>
    <body>
        <h1>Ventas</h1>
        <%
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
         try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection connection
            = DriverManager.getConnection("jdbc:mysql://localhost/empresa?user=root&password=");

            Statement statement = connection.createStatement();
            resultset = statement.executeQuery("select * from tbl_empresa");
            
                 while (resultset.next()) {
                                  dataset.setValue(Integer.parseInt(resultset.getString(1)),resultset.getString(3), resultset.getString(4)); 
                                    } 
         
        JFreeChart chart = ChartFactory.createBarChart("Ventas","2019", "Numero de Ventas", dataset, PlotOrientation.VERTICAL, false,true, false);
        
        

        %>
        <%
       
        %>
        
                      <center>
                            <span class="custom-dropdown big">
                                <select name="dependencia">
                                    <%  while (resultset.next()) {%>
                                    <option><%= resultset.getString(3)%></option>
                                    <% } %>
                                </select>
                            </span>
                        </center>              
                                

        <%
           

                try {
            
            
            response.setContentType("image/png");
            OutputStream os = response.getOutputStream();
            ChartUtilities.writeChartAsPNG(os, chart, 1200, 800);
 
 
        } catch (IOException e) {
            System.err.println("Error creando grafico.");
        }
                } catch (Exception e) {
            out.println("wrong entry" + e);
            }
        %>
    </body>
</html>