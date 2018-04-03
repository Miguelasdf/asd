import materiales.*

import camiseta.*
import example.*


class BoludeandoConeElcodigo{
		const servicio = 100 
	const costoAgregado = 100
	var centro
	var listas=[]
	
	method cambiarSolicitante(lista, modificacion,centro_procesamiento) {
	listas.forEach(
{ x => x.cambiarLeyenda(modificacion) 
	x.agregarAdicional(servicio+self.servicioAgregado(camistas)+x.cantidadCamistas())
})
}

	
	method puedeServir(listas, modificacion,centro_procesamiento){
		
		
			
			camiseta.cambiarLeyenda(_leyenda)
		  camiseta.agregarAdicional(servicio+self.servicioAgregado(camiseta)+centro_procesamiento. tamanoDelPedido())
			
			
			}
		}
		

		
	
	
	

object union{}

class Estampador {
	const servicio = 100 
	const costoAgregado = 100
	var centro
	method estampar(camiseta, _leyenda,centro_procesamiento){
		
		if( centro_procesamiento. tamanoDelPedido()){
		
		camiseta.cambiarLeyenda(_leyenda)
		  camiseta.agregarAdicional(servicio+self.servicioAgregado(camiseta)+centro_procesamiento. tamanoDelPedido()*0,2)
	}}
	method servicioAgregado(camiseta){
		var aux=0
		if (camiseta.saberSiElEstampadoEsLargo())
			aux = costoAgregado
		return aux
	}
}
	
class Tintorero {
	var servicio = 75
	var costoAgregado = 100	
	
	method puedeservirr(camiseta, _color,centro_procesamiento){
	
		camiseta.cambiarColor(_color)
	   centro_procesamiento.puedeServir(camiseta, _color,centro_procesamiento)
	}}
	method servicioAgregado(camiseta){
		var aux=0
		if (camiseta.material() == 'dryfit') // deberia funcionar sin comillas, de todas formas no esta bueno el if con == para preguntar si un objeto es tal objeto o si una clase es tal clase
			aux = costoAgregado
		return aux
	}
}
	
	
class Costurero {
	var costoUnRefuerzo = 10.randomUpTo(20) // lindo para jugar, feo para testear
	var costoUnaCostura = 5.randomUpTo(10)
	
	method agregarCostura(camiseta, _costuras){
		camiseta.agregarCostura(_costuras)
		camiseta.agregarAdicional(costoUnaCostura * _costuras)
	}
	method agregarRefuerzo(camiseta, _refuerzos){
		camiseta.agregarRefuerzo(_refuerzos)
		camiseta.agregarAdicional(costoUnRefuerzo * _refuerzos)
	}
}