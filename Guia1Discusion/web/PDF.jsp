<%-- 
    Document   : PDF
    Created on : 13-ago-2015, 22:49:20
    Author     : Mario Chinchilla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
            String s= request.getParameter("artista");
    %>
    <body>
        <a href="DashPDF?P_ARTISTA_ID=<%= s%>"><img src="pdf.jpg" width="40"
height="40" alt="pdf"/> Generar Reporte Pdf</a><br>
    </body>
    
    
    
</html>
