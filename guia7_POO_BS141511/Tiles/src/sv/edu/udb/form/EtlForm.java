 
package sv.edu.udb.form;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.upload.FormFile;
import org.apache.struts.validator.ValidatorForm;
public class EtlForm extends ValidatorForm{
/**
*
*/
private static final long serialVersionUID = 1L;
private FormFile excel;	 
public FormFile getExcel() {
return excel;
}
public void setExcel(FormFile excel) {
this.excel = excel;
}
public ActionErrors  validate (ActionMapping mapping, HttpServletRequest request)
{
ActionErrors errores = new ActionErrors ();
//validacion para excel
if (excel.getFileSize() == 0)
{
//esta vacio
errores.add("vacio1", new ActionMessage ("error.fichero.vacio1"));
}
else
{
if ( !excel.getContentType().equals("application/vnd.ms-excel"))
{
errores.add("tipo1",new ActionMessage("error.fichero.tipo2"));
System.out.print(excel.getContentType());
}
else
{  
if ( excel.getFileSize() > 1*1024*1024 )
{
errores.add("tamanio1", new ActionMessage("error.fichero.tamanio1"));
}
}
}
return errores;
}
}
