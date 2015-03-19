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
			}
		}
		def pa=[:]
		def Array = []
		def result = []
		
		
		//def mi=[]
		JsonBuilder json = new JsonBuilder ()
		def mynewJSON= json{
			
		}
		
		//mynewJSON.putAt("rows", 745).toString()
		//mynewJSON.putAt("prueba", "fsasaf").toString()
		
		//mi['perrito']="fsa"
		
		
		
		for(int i=0;i<branchCount.size();i++){
			Array=branchCount.get(i)
			pa['id']=Array[0]
			pa['nombre']=Array[1]
			result.push(pa)
			pa=null
			pa=[:]
		}
		
		mynewJSON.putAt("rows", result).toString()
		mynewJSON.putAt("total", 15).toString()
		
		println("datos:___________")
		println(mynewJSON)
		println(result)
		render(mynewJSON as JSON);
		
		
	}
}
