package sv.edu.udb.action;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.Connection;
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

import sv.edu.udb.form.SubirForm;

public class RegistrarAction extends DispatchAction{
	public ActionForward login(ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response)
			throws Exception {
			return mapping.findForward("exito");
			}
	public ActionForward subirArchivo(ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response)
			throws Exception{
		
			//Obtener el poolde conexiones
			Context init =new InitialContext();
			Context context =(Context)init.lookup("java:comp/env");
			DataSource dataSource=(DataSource)context.lookup("jdbc/mysql");
			Connection conexion=dataSource.getConnection();
			SubirForm subir=(SubirForm)form;
			FileOutputStream fileoutputstream =null;
			try
			{
			FormFile fichero=subir.getArchivo();
			String ruta="/C:/Users/usuario/Desktop/robert/"+subir.getArchivo();//Poner ruta donde quedaran los 	 
			fileoutputstream = new FileOutputStream(new File(ruta));
			fileoutputstream.write(fichero.getFileData());
			FormFile fichero1 = subir.getArchivo1();
			String ruta1="/C:/Users/usuario/Desktop/robert/"+subir.getArchivo1();//poner ruta
			fileoutputstream = new FileOutputStream(new File(ruta1));
			fileoutputstream.write(fichero1.getFileData());
			Statement s = conexion.createStatement();
			s.executeUpdate("Insert into Empleados  values("+null+",\""+subir.getNombres()+"\",\""+subir.getApellidos()+"\",\""+subir.getArchivo()+"\",\""+subir.getArchivo1()+"\")");
			}
			catch(Exception e){
			// TODO: handle exception
			System.out.println(e);
			}
			finally
			{
			if(fileoutputstream!=null)
			{
			fileoutputstream.close();
			}
			}
			return mapping.findForward("exito");
			}
}
