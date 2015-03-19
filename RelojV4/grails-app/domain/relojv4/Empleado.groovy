package relojv4


class Empleado {
	String nombre
	String curp
	String tipo
	
	static hasMany = [horarios : Horario, historiales:Historial]
	
    static constraints = {
    }
	
	static mapping = {
		version false
	}
}
