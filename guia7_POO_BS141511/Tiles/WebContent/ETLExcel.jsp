 
<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%> 
<html> 
<head> 	   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Ingreso de Datos</title> 
<style type="text/css"> 
.error { 
position: relative; 
border: 1px solid #6699CC; 
font-family: Arial; 
font-size: 11px; 
background-repeat: repeat-x; 
} 
</style> 
</head> 
<body> 
<center> 
<html:form action="/cargaretl" enctype="multipart/form-data" 
method="post"> 
<table> 
<tr> 
<td>Archivo a Cargar:</td> 
<td><html:file property="excel" /></td> 
<td><html:errors property="vacio2" /> 
<html:errors property="tipo2" /> 
<html:errors property="tamanio1" /></td> 
</tr> 
<tr> 
<td colspan="3"><html:submit value="Subir Datos" /> 
<html:reset value="Limpiar" /> 
<html:hidden property="method" value="subirArchivo" /> 
</td> 
</tr> 
</table> 
</html:form> 
<div class="error"> 
<html:errors /> 
</div> 
</center> 
</body> 
</html> 	 
