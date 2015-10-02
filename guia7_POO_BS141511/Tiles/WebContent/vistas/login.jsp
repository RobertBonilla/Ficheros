<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Login de Sistema de Visitas </title>
    <style type="text/css">
.error {
position: relative;
border: 1px solid #6699CC;
font-family: Arial;
font-size: 11px;
background-repeat: repeat-x;
}

</style>
    <!-- Bootstrap core CSS -->
 <%@ include file="/top-tags.jsp"%>
  

</head>

<body style="background:#F7F7F7;">
    
    <div class="">
        <a class="hiddenanchor" id="toregister"></a>
        <a class="hiddenanchor" id="tologin"></a>

        <div id="wrapper">
            <div id="login" class="animate form">
                <section class="login_content">
                    <html:form action="/validar" method="post" onsubmit="return validateValidacionForm(this);">
                        <h1>Formulario de Ingreso</h1>
                        <div class="form-control"  placeholder="Usuario" type="text">
                          <html:text property="usuario"/>
                          <html:errors property="usuario"/>
                        </div>
                        <div type="password" class="form-control" placeholder="Contraseña">
                           <html:password property="password"/>
                            <html:errors property="password"/></td>           
                        </div>
                        <div class="btn btn-default submit">
                            <html:hidden property="method" value="login"/>
                            <html:submit property="submit" value="Validar" />
                            <a class="reset_pass" href="#">¿Perdió su contraseña?</a>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">

                           
                            <div class="clearfix"></div>
                            <br />
                         <div>
                                <h1><img src="../images/udb.png" width="70" height="70"/> UDB</h1>

                                      <p>©2015 Derechos Reservados UDB</p>
                            </div>
                        </div>
                        <div class="error">
                        <html:errors/>
                    </html:form>
                    <!-- form -->
                </section>
                <!-- content -->
            </div>
       
        </div>
    </div>
    
 <script src="../js/jquery.min.js"></script>
 
</body>

</html>