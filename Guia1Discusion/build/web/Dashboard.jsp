<%-- 
    Document   : Dashboard
    Created on : 09-ago-2015, 13:34:22
    Author     : Mario Chinchilla
--%>


<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<script type="text/javascript" src="prototype.js"></script>
<script type="text/javascript">
function VerDashBoard(select){
id=select.value;
$('cargando').innerHTML = "<img src='cargando.gif'>..::Espere Porfavor::...";
var params="P_ARTISTA_ID="+id;
var url="DashBoard";
var ajx = new Ajax.Updater('DashBoard',url,{parameters:params, onComplete:muestraMensaje});
}
function muestraMensaje(){
$('cargando').innerHTML = "";
}


</script>
</head>
<body>
  
<!-- column headers -->
<sql:query var="result" dataSource="jdbc/mysql">
SELECT ArtistId, Name from chinook.artist order by name
</sql:query>
<form action="PDF.jsp" method=post>
<select name="artista" onchange="VerDashBoard(this)">
<option value="-1">
Seleccionar un artista y luego enviar a PDF.
</option>
<c:forEach var="row" items="${result.rows}">
<option value="${row.ArtistId}">
${row.Name}
</option>
</c:forEach>
</select>
    <input type="submit" value="Enviar a PDF"/>
</form>
<div name="cargando" id="cargando">
</div>
<div name="DashBoard" id="DashBoard">
</div>




</body>
</html>
