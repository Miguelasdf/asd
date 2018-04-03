import materiales.*
import camiseta.*
import proveedores.*
import example.*

class Camiseta {
	var estampado
	var material   
	var color   
	var refuerzos = 0
	var costurasExtra = 0
	var cliente 
	var costoInicial
	const costoParaMultiplicar = 50
	var costoAdicional = 0
	constructor(_estampado, _material, _color, _refuerzos, _costurasExtra, _cliente, _costoInicial){
		estampado = _estampado
		material = _material
		color = _color
		refuerzos = _refuerzos
		costurasExtra = _costurasExtra
		cliente = _cliente
		costoInicial = self.calcularCosto()
	}
	constructor(_estampado, _material, _color, _cliente, _costoInicial){
		estampado = _estampado
		material = _material
		color = _color
		cliente = _cliente
		costoInicial = self.calcularCosto()
	}	
	method agregarCostura(cantidad){
		costurasExtra = costurasExtra + cantidad
	}
	method agregarRefuerzo(cantidad){
		refuerzos = refuerzos + cantidad
	}
	method cambiarLeyenda(leyenda){
		estampado = leyenda
	}
	method cambiarColor(_color){
		color = _color
	}
	method saberSiUnClienteAcepta(){
		return cliente.probarCamiseta(self)
	}
	method saberSiElEstampadoEsLargo(){
		return estampado.size() > 5
	}
	method agregarAdicional(costo){
		costoAdicional += costo
	}
	method material(){
		return material
	}
	method color() {
		return color
	}
	method resistenciaRefuerzos() {
		return 0.5 * refuerzos
	}
	method resistenciaCosturas() {
		return (0.2 * costurasExtra ) + 1
	}
	method gradoResistencia() {
		return ( material.resistencia() + self.resistenciaRefuerzos() ) *  self.resistenciaCosturas() 
	}
	method costoGrado(){ 
		return costoParaMultiplicar * self.gradoResistencia() 
	}
	method calcularCosto(){
		return material.costoBase(self.color()) + self.costoGrado() + costoAdicional
	}
	method verRefuerzo(){
		return refuerzos
	}
 	method costurasExtra (){
 		return costurasExtra 
 	}		
}