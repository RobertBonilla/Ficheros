<%@page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ingreso de Datos </title>
<style type="text/css">
.error{
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
<html:form action= "/subirarchivos" enctype="multipart/form-data" method="post">
<table>
<tr>
<td>Ingrese sus Nombre:</td>
<td><html:text property="nombres" value=""/></td>
<html:errors property="usuario"/></td>
<td>&nbsp;</td>
</tr>
<tr>
<td>Ingrese sus Apellidos:</td>
<td><html:text property="apellidos" value=""/></td>	
<html:errors property="usuario"/></td> 
  
<td>&nbsp;</td>
</tr>
<tr>
<td>Agregar Fotografia:</td>
<td><html:file property="archivo"/></td>
<td><html:errors property="vacio"/>
<html:errors property="tipo"/>
<html:errors property="tamanio"/></td>
</tr>
<tr>
<td>Agregar Curriculum:</td>
<td><html:file property="archivo1"/></td>
<td><html:errors property="vacio1"/>
<html:errors property="tipo1"/>
<html:errors property="tamanio1"/></td>
</tr>
<tr>
<tdcolspan="3"><html:submit value="Subir Datos"/>
<html:reset value="Limpiar"/>
<html:hidden property="method" value="subirArchivo"/>
</td>
</tr>
</table>
</html:form>
<divclass="error">
<html:errors/>
</div>
</center>
</body>
</html>	 
