package sv.edu.udb.form;
import org.apache.struts.validator.ValidatorForm;

public class ValidacionForm extends ValidatorForm{
	/**
	*
	*/
	private static final long serialVersionUID = 1L;
	private String usuario;
	private String password;
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
    }
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
