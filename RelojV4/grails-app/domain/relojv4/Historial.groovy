package relojv4


class Historial {
	Short hora
	Short minuto
	String tipo
	Integer retardos
	Integer faltas
	Date fecha
	static belongsTo = [empleado : Empleado]
    static constraints = {
    }
	
	static mapping = {
		version false
	}
}
