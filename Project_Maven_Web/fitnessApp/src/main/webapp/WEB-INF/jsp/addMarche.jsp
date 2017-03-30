<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Primera Venta</title>
<style type="text/css">
table{
width:100%
}
table, th, td{
	border: 1px solid black;
	border-callapse: collapse;
}
th, td{
padding: 5px;
	text-align: center; 
}
table#01 tr:nth-child(even){
	background-color:rgb(128,128,0);
}
table#01 tr:nth-child(odd){
	background-color:rgb(64,64,0);
}
table#01 th{
	background-color: black;
	color: white;
}
</style>

</head>
<body style="background-color:rgb(255,167,0);color:white" p.indent{padding-left:1.8 em}> 
<h1 style="background-color:rgb(0,0,0);color:white">  Ventas ACME <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img alt="Catalog" src="images/catalog.png" style="width:160px;height:106px"></h1>
<h2>&nbsp;&nbsp;&nbsp;Lista de precios</h2>
<p>Marca ACME ofrece una gran variedad de productos.<br>
Tómese el tiempo par observar las diferentes opciones.</p>

	<form:form commandName= "venta"> 
	
	
	<table>
		
		
		<tr>
		<td>&nbsp;&nbsp;&nbsp;<input type="checkbox" name="venta" value=408001>Anvil<br> &nbsp;&nbsp;&nbsp;<img alt="Anvil" src="images/anvil.jpg" style="width:200px;height:200px"></td>
		<td>&nbsp;&nbsp;&nbsp;<input type="checkbox" name="venta" value=408002>Dynamite x 12<br> &nbsp;&nbsp;&nbsp;<img alt="Dinamita" src="images/dinamita.jpg" style="width:200px;height:200px"></td>
		</tr>
		<tr>
		<td>&nbsp;&nbsp;&nbsp;<input type="checkbox" name="venta" value=408003>Earthquake<br> &nbsp;&nbsp;&nbsp;<img alt="Violencia" src="images/Earthquake.png" style="width:200px;height:200px"></td>
		<td>&nbsp;&nbsp;&nbsp;<input type="checkbox" name="venta" value=408004>Integrating Pistol<br> &nbsp;&nbsp;&nbsp;<img alt="Violencia" src="images/Integratingpistol.jpg" style="width:200px;height:200px"></td>
		</tr>
		<tr>
		<td>&nbsp;&nbsp;&nbsp;<input type="checkbox" name="venta" value=408005>Magnet<br> &nbsp;&nbsp;&nbsp;<img alt="Violencia" src="images/magnet.jpg" style="width:200px;height:200px"></td>
		<td>&nbsp;&nbsp;&nbsp;<input type="checkbox" name="venta" value=408006>Tornado seeds<br> &nbsp;&nbsp;&nbsp;<img alt="Violencia" src="images/tornado.jpg" style="width:200px;height:200px"></td>
		</tr>
		</form>
		
		
		<tr>
			<td colspan="2">
				<p>Se debe de agregar un elemento a la vez.</p>
				<br><br><input type="submit" value="Agregar al carro"/>
			</td>	
			
		</tr>
		
		<tr>
			<td>Total:</td>
			<td><form:input path="somme"/> </td>
		</tr>
	</table>
	<br>
	<table>
	<tr>
	<td>
	¿Estas completamente seguro de querer comprar?</td>
	</tr>
	<tr>
		<td>
		<button type="button" onClick="alert('Tu compra ha sido registrada')">PAGAR</button></td>
		
		
	</tr>
	<tr>
		<td> <input type="submit" value="BORRAR"/> </td>
	</tr>
	</table>
	
	<br>
	
	<br>
	<h6>Marca ACME No se hace responsable por el mal uso de sus productos ni las lesiones que estos puedan causar a terceros.   </h6>
	<br>
</form:form>
</body>
</html>