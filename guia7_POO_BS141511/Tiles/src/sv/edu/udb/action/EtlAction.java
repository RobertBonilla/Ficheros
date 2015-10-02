 
package sv.edu.udb.action; 
import java.io.File; 
import java.io.FileOutputStream; 
import java.io.FileInputStream; 
import java.sql.Connection; 
import java.sql.SQLException; 
import java.sql.Statement; 
import javax.naming.Context; 	   
import javax.naming.InitialContext; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
import javax.sql.DataSource; 
import org.apache.struts.action.ActionForm; 
import org.apache.struts.action.ActionForward; 
import org.apache.struts.action.ActionMapping; 
import org.apache.struts.actions.DispatchAction; 
import org.apache.struts.upload.FormFile; 
import java.util.ArrayList; 
import java.util.Iterator; 
import java.util.List; 
/*IMPORTS REFERENTES A POI*/ 
import org.apache.poi.hssf.usermodel.HSSFCell; 
import org.apache.poi.hssf.usermodel.HSSFRow; 
import org.apache.poi.hssf.usermodel.HSSFSheet; 
import org.apache.poi.hssf.usermodel.HSSFWorkbook; 
import org.apache.poi.poifs.filesystem.POIFSFileSystem; 
/*FIN IMPORTS REFERENTES A POI*/ 
import sv.edu.udb.form.EtlForm; 
public class EtlAction extends DispatchAction { 
List cellDataList = new ArrayList(); 
public ActionForward subirArchivo(ActionMapping mapping, ActionForm form, 
HttpServletRequest request, HttpServletResponse response) 
throws Exception { 
// Obtener el pool de conexiones 
Context init = new InitialContext(); 
Context context = (Context) init.lookup("java:comp/env"); 
DataSource dataSource = (DataSource) context.lookup("jdbc/mysql"); 
Connection conexion = dataSource.getConnection(); 
EtlForm etl = (EtlForm) form; 
FileInputStream fileoutputstream = null; 
/*SE LIMPIA LA LISTA PARA EVITAR INGRESAR VARIAS VECES LOS MISMOS DATOS*/ 
cellDataList.clear(); 
try { 
POIFSFileSystem fsFileSystem = new POIFSFileSystem(etl.getExcel().getInputStream()); 
HSSFWorkbook workBook = new HSSFWorkbook(fsFileSystem); 
HSSFSheet hssfSheet = workBook.getSheetAt(0); 
/** 
* Iterar filas y celdas para obtener todos los datos 
*/ 
Iterator rowIterator = hssfSheet.rowIterator(); 
int rowCount=0; 
while (rowIterator.hasNext()) { 
HSSFRow hssfRow = (HSSFRow) rowIterator.next(); 
Iterator iterator = hssfRow.cellIterator(); 	 
List cellTempList = new ArrayList();
while (iterator.hasNext()) {
HSSFCell hssfCell = (HSSFCell) iterator.next();
cellTempList.add(hssfCell);
}
System.out.println("Fetching data from row " + (rowCount++));
cellDataList.add(cellTempList);
}
} catch (Exception e) {
e.printStackTrace();
}
/**
* Call the printToConsole method to print the cell data in the console.
*/
load(cellDataList, conexion);
return mapping.findForward("exito");
}
private void load(List cellDataList, Connection conexion) throws SQLException {
Statement s = conexion.createStatement();
String no_lista = "", codigo ="", nombres = "";
String nombre = "",apellido = "", rol = "",usuario = "",contra="",correo="",telefono="",escuela="",tp="";
String query;
//se comienza con i=1 para saltar el encabezado
for (int i = 1; i < cellDataList.size(); i++) {
List cellTempList = (List) cellDataList.get(i);
for (int j = 0; j < cellTempList.size(); j++) {
		HSSFCell hssfCell = (HSSFCell) cellTempList.get(j);
		String stringCellValue = hssfCell.toString();
		
		if( j==0 ) nombre = stringCellValue;
		if( j==1 ) apellido = stringCellValue;
		if( j==2 ) rol = stringCellValue;
		if( j==3 ) usuario = stringCellValue;
		if( j==4 ) contra = stringCellValue;
		if( j==5 ) correo = stringCellValue;
		if( j==6 ) telefono = stringCellValue;
		if( j==7 ) escuela = stringCellValue;
		if( j==8 ) tp = stringCellValue;
}
query = "insert into usuarios (nombre,apellido,rol,usuario,contrasena,correo,telefono,escuela,tiempoCompleto) ";
query+= "values('"+nombre+"' , "+ "'"+ apellido +"',"+""+ rol + ",";
query+= "'"+usuario+"' , "+ "'"+ contra +"',"+"'"+ correo + "',";
query+= "'"+telefono+"' , "+ "'"+ escuela +"',"+ tp + ")";
s.executeUpdate(query);
}
}
}