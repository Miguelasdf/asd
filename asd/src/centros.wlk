
import materiales.*
import camisetas.*
import proveedores.*
import clientes.*
import pedidos.*

class Centro {
	var pedidos = []
	var pedidosListos = []	
	var costoTotal 	
	 	
	method pasarPedido(_pedido){
		self.seleccionDePedido(_pedido).procesar()			
	} 	
	 	
	method recibirPedido(_pedido){
		pedidos.add(_pedido)
	}
		
	method seleccionDePedido(_pedido){
		return pedidos.find({pedido => pedido.equals(_pedido)})
	}	
			
	method costoGeneral(_pedido){
		return 0.2 * self.seleccionDePedido(_pedido).cantidad()
		
	}		
		
	method costoCamisetas(_pedido){
		return self.seleccionDePedido(_pedido).costoCamiseta() * self.seleccionDePedido(_pedido).cantidad()
	}	
		
	method costoParcial(_pedido){
		 return self.costoGeneral(_pedido) + self.costoCamisetas(_pedido)	
	}		
	
	method saberSiEstaListo(_pedido) {
		self.seleccionDePedido(_pedido).estaListo()
	}
	
	method saberSiEstaAtrasado(_pedido) {
		self.seleccionDePedido(_pedido).estaAtrasado()
	}
	
	method saberCualesPedidosEstanListos(){
		return pedidos.filter({pedido => pedido.estaListo() })
	}
		method sumaDelosPeididosListos() {
		pedidosListos=self.saberCualesPedidosEstanListos()
		
		
	return	pedidosListos.sum({x => self.costoTotal(x)}) 
	}
	method costoTotal(_pedido){
		 return self.costoParcial(_pedido)
	}	
	
//Saber cuánto va a cobrar un centro de procesamiento. Esto es la 
//sumatoria del costo total de las camisetas de los pedidos por la cantidad de cada pedido listo para entregar.	
	
	//[pedi, pedo]
	method ingresos(){
		pedidosListos = pedidos.filter({ pedido => pedido.estaListo()  })
		return pedidosListos.sum({x => x.costoTotal()}) 
		//pedidosListos.forEach({pedido => self.valor(pedido)})
		//return costoTotal
	}
	
	method ingre(){
		if (pedidos.filter({pedido => pedido.estaListo()}))
			costoTotal += self.costoTotal(pedido)		
	}
	
	method valor(_costo){
		costoTotal = _costo.costoTotal(_costo) + costoTotal
	}
	
}

class  CentroCheto inherits Centro {
	
	override method recibirPedido(_pedido){
		if (_pedido.aceptablePorCentroCheto())
			pedidos.add(_pedido)
	}

	override method costoTotal(_pedido){
		return self.costoParcial(_pedido) + (0.3 * self.costoParcial(_pedido)) 
	}
}
	
   
class  CentroArea inherits Centro {
	var cantidadEmpleados
	var costoAdicional = 400
	var costoNormal = 200
	
	constructor(_cantidadEmpleados){
		cantidadEmpleados = _cantidadEmpleados
	}

	method costoAdicional(){
		return if (cantidadEmpleados > 3) costoAdicional else costoNormal 
	}

	override method costoTotal(_pedido){
		 return self.costoParcial(_pedido) + self.costoAdicional()
		
	}
}


class  CentroBaratija inherits Centro {

	override method recibirPedido(_pedido){
		if (_pedido.aceptablePorCentroBaratija())
			pedidos.add(_pedido)
	}
}