package sv.edu.udb.form;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.upload.FormFile;	   
import org.apache.struts.validator.ValidatorForm;
import org.apache.struts.action.ActionForm;

public class SubirForm extends ValidatorForm{
/**
*
*/
	
private static final long serialVersionUID=2L;
private String nombres;
private String apellidos;
private FormFile archivo;
private FormFile archivo1;
public String getNombres(){
return nombres;
}
public void setNombres(String nombres){
this.nombres=nombres;
}
public String getApellidos(){
return apellidos;
}
public void setApellidos(String apellidos){
this.apellidos=apellidos;
}
public FormFile getArchivo(){
return archivo;
}
public void setArchivo(FormFile archivo){
this.archivo=archivo;
}
public FormFile getArchivo1(){
return archivo1;
}
public void setArchivo1(FormFile archivo1){
this.archivo1=archivo1;
}
public ActionErrors validate(ActionMapping mapping,HttpServletRequest request)
{
		ActionErrors errores = new ActionErrors();
//validacion para foto
if(archivo.getFileSize()==0)
{
//esta vacio
		errores.add("vacio",new ActionMessage ("error.fichero.vacio"));
}
else
{
if(!archivo.getContentType().equals("image/jpeg"))
{
		errores.add("tipo",new ActionMessage("error.fichero.tipo"));
		System.out.print(archivo.getContentType());
}
else
{
if(archivo.getFileSize()>1*1024*1024)
{
		errores.add("tamanio",new ActionMessage("error.fichero.tamanio"));
}
}
}
//validacion para curriculum
if(archivo1.getFileSize()==0)
{
//esta vacio
		errores.add("vacio1",new ActionMessage("error.fichero.vacio1"));
}
else
{
if(!archivo1.getContentType().equals("application/pdf"))
{
		errores.add("tipo1",new ActionMessage("error.fichero.tipo1"));
		System.out.print(archivo.getContentType());
}
else
{
if(archivo1.getFileSize()>1*1024*1024)
{
		errores.add("tamanio1",new ActionMessage("error.fichero.tamanio1"));
}
}
}
return errores;
}
}
	 
