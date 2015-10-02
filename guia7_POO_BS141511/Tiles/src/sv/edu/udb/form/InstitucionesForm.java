package sv.edu.udb.form;
import org.apache.struts.validator.ValidatorForm;


public class InstitucionesForm extends ValidatorForm{
	
	private static final long serialVersionUID = 1L;
	private String nombre;
	private String direccion;
	private String pcontacto;
	private String ptelefono;
	private String scontacto;
	private String stelefono;
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getPcontacto() {
		return pcontacto;
	}
	public void setPcontacto(String pcontacto) {
		this.pcontacto = pcontacto;
	}
	public String getPtelefono() {
		return ptelefono;
	}
	public void setPtelefono(String ptelefono) {
		this.ptelefono = ptelefono;
	}
	public String getScontacto() {
		return scontacto;
	}
	public void setScontacto(String scontacto) {
		this.scontacto = scontacto;
	}
	public String getStelefono() {
		return stelefono;
	}
	public void setStelefono(String stelefono) {
		this.stelefono = stelefono;
	}
	
	

}
