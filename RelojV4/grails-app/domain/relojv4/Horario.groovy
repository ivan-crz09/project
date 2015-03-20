package relojv4

class Horario {
	String diaSemana
	Short hora
	Short minuto
	String tipoChecado
	static belongsTo = [empleado : Empleado]
    
	static constraints = {
		
    }
	
	static mapping = {
		version false
	}
}
