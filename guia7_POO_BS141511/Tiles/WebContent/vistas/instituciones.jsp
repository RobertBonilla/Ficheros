<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file="/top-tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Instituciones</title>

  <script src="js/jquery.min.js"></script>
</head>
<body>
<div class="right_col" role="main">

                <br />
                <div class="">

                 


<div class="page-title">
                        <div class="title_left">
                           <center> <h3>Instituciones</h3></center>
                        </div>
                
</div>


              <div class="clearfix"></div>

                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                      
                                <div class="x_content" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                                    <br />
                                    <html:form action="/registra" method="post" onsubmit="return validateInstitucionesForm(this);">
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Nombre<span class="required">*</span>
                                            </label>                                          
                                            <html:text property="nombre"/>
                                            <html:errors property="nombre"/>                                   
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Dirección <span class="required">*</span>
                                            </label>                                          
                                                <html:text property="direccion"/>
                                                <html:errors property="direccion"/>                                                                                  
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Primer Contacto</label>
                                             <html:text property="pcontacto"/>
                                             <html:errors property="pcontacto"/>                                                     
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Teléfono</label>
                                               <html:text property="ptelefono"/> 
                                               <html:errors property="ptelefono"/> 
                                        </div>     
                                           <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Segundo Contacto</label>
                                            <html:text property="scontacto"/> 
                                            <html:errors property="scontacto"/> 
                                        </div>
                                      
                                       <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Teléfono</label>
                                              <html:text property="stelefono"/>
                                              <html:errors property="stelefono"/> 
                                        </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                          <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <html:submit property="submit" value="Cancelar" />
                                                <html:hidden property="method" value="agregar"/>
                                                <html:submit property="submit" value="Agregar" />
                                                <html:submit property="submit" value="Consultar" />
                                                <html:submit property="submit" value="Eliminar" />
                                                <html:submit property="submit" value="Actualizar" />

                                           
                                            </div>
                                        </div>
                                        <div class="error">
                                        <html:errors/>
                                  </html:form>
                                </div>
                            </div>
                        </div>
                    </div>     
                       

                     
                    <script src="js/jquery.inputmask.js"></script>
                           <script>
        $(document).ready(function () {
            $(":input").inputmask();
        });
    </script>
               

            </div>
            <!-- /page content -->
        </div>

</body>
</html:html>