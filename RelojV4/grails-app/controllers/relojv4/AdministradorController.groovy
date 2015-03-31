package relojv4

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import groovy.json.JsonBuilder

@Secured(['ROLE_ADMIN'])
class AdministradorController {

    def index() { }
	
	
	def obtenerEmpleados(){
		
		def c=Empleado.createCriteria()
		def branchCount = c.list {
			projections{
				property("id")
				property("nombre")
				property("curp")
			}
		}
		def pa=[:]
		def Array = []
		def result = []
		
		
		//def mi=[]
		JsonBuilder json = new JsonBuilder ()
		def mynewJSON= json{
			
		}
		
		for(int i=0;i<branchCount.size();i++){
			Array=branchCount.get(i)
			pa['id']=Array[0]
			pa['nombre']=Array[1]
			pa['curp']=Array[2]
			result.push(pa)
			pa=null
		}
		
		mynewJSON.putAt("rows", result).toString()
		mynewJSON.putAt("total",branchCount.size() ).toString()
		
		
		render(mynewJSON as JSON);
		
		
	}
}
