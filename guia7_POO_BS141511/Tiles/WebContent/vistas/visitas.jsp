<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file="/top-tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Visitas</title>

  <script src="js/jquery.min.js"></script>
</head>
<body>
<div class="right_col" role="main">

                <br />
                <div class="">

                 


<div class="page-title">
                        <div class="title_left">
                           <center> <h3>Visitas</h3></center>
                        </div>
                
</div>

 <div class="clearfix"></div>

                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                      
                                <div class="x_content">
                                    <br />
                                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Asignado por: <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Estado <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Fecha de Comienzo </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" class="form-control" data-inputmask="'mask': '99/99/9999'">
                                            </div>
                                        </div>
                                         <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Fecha de Fin </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" class="form-control" data-inputmask="'mask': '99/99/9999'">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Visita Realizada</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                               
                                                  <div class="btn-group" data-toggle="buttons">
                                            <label class="btn btn-default">
                                                <input type="radio" name="options" id="option1"> Sí
                                            </label>
                                            <label class="btn btn-default">
                                                <input type="radio" name="options" id="option2"> No
                                            </label>
                                        
                                        </div>
                                                
                                            </div>
                                        </div>
                                        
                                           <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Comentarios</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <textarea class="form-control" rows="3"></textarea>
                                            </div>
                                        </div>
                                        
                                           <div class="form-group">
                                            <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Comentarios sobre visita</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <textarea class="form-control" rows="3" ></textarea>
                                            </div>
                                        </div>
                                        
                             
                                    
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <button type="submit" class="btn btn-primary">Cancelar</button>
                                                <button type="submit" class="btn btn-success">Agregar</button>
                                                <button type="submit" class="btn btn-info">Consultar</button>
                                                <button type="submit" class="btn btn-warning">Modificar</button>
                                                <button type="submit" class="btn btn-danger">Eliminar</button>
                                           
                                            </div>
                                        </div>

                                    </form>
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