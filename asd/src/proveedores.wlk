import materiales.*
import clientes.*
import camisetas.*
import centros.*
import pedidos.*

class Estampador {
	const servicio = 100 
	const costoAgregado = 100
	var leyenda
	
	constructor(_leyenda){
		leyenda = _leyenda
	}
	
	method trabajarCamiseta(_camiseta){
		_camiseta.cambiarLeyenda(leyenda)
		_camiseta.agregarAdicional(servicio+self.servicioAgregado(_camiseta))	
	}
	
	method servicioAgregado(_camiseta){
		return if (_camiseta.saberSiElEstampadoEsLargo()) costoAgregado else 0 
	}
}
	
class Tintorero {
	var servicio = 75
	var color
	
	constructor(_color){
		color = _color	
	}
	
	method trabajarCamiseta(_camiseta){
		_camiseta.cambiarColor(color)
		_camiseta.agregarAdicional(servicio+_camiseta.material().costoAdicional())
	}
}
	
class Costurero {
//	var costoUnRefuerzo = 10.randomUpTo(20) // lindo para jugar, feo para testear
//	var costoUnaCostura = 5.randomUpTo(10)
	var costuras
	var costoUnaCostura
	var refuerzos
	var costoUnRefuerzo

	constructor(_costuras, _costoUnaCostura, _refuerzos, _costoUnRefuerzo){
		costuras = _costuras
		costoUnaCostura = _costoUnaCostura
		refuerzos = _refuerzos		
		costoUnRefuerzo = _costoUnRefuerzo
	}	
	
	method trabajarCamiseta(_camiseta){
		_camiseta.agregarCostura(costuras)
		_camiseta.agregarAdicional(costoUnaCostura * costuras)
		_camiseta.agregarRefuerzo(refuerzos)
		_camiseta.agregarAdicional(costoUnRefuerzo * refuerzos)
	}

}
