import materiales.*
import clientes.*
import proveedores.*
import centros.*
import camisetas.*

class Pedido {
	var fechaDeEntrega 
	var camiseta 
	var proveedores = []
	var cantidad
	var movimientos = []


	constructor(_camiseta,_proveedor,_cantidad, _fechaDeEntrega){
		camiseta = _camiseta
		cantidad = _cantidad
		proveedores.addAll(_proveedor)
		fechaDeEntrega = _fechaDeEntrega 
	}
	
	method fechaDeEntrega() {
		return fechaDeEntrega
	}
	
	method costoCamiseta(){
		return camiseta.calcularCosto()
	}
	
	method aceptablePorCentroCheto() {
		return self.costoCamiseta() > 650 and camiseta.esRoja() and cantidad < 21	
	}	
	
	method aceptablePorCentroBaratija() {
		return self.cantidad() > 10 and camiseta.costoInicial() < 120
	}
		
	method cantidad() {
		return cantidad
	}
		
	method camiseta() {
		return camiseta
	}
	
	method procesar() {
		var proveedor = proveedores.get(0)
		proveedor.trabajarCamiseta(camiseta)
		self.movimiento(proveedor)
		proveedores.remove(proveedor)
	}
		
	method estaListo() {
		return proveedores.isEmpty()
	}
	
	method atraso(lococo){
		return self.fechaDeEntrega() < lococo
	}

	method estaAtrasado() {
		return movimientos.all({movi => movi.get(2) > self.fechaDeEntrega()})	
	}
		
	method movimiento(_proveedor) {
		movimientos.add([_proveedor, cantidad, new Date()])
	}	
}