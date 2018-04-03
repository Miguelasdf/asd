
import materiales.*
import camisetas.*
import proveedores.*
import camiseta.*
class CentroDeProcesamient  {
var proveedores = []
	var camisetas = []
	var pedidos = []
	var fechaDeEntrega = new Date()
	var camiseta 
	var proveedor
	var cantidad
	
	
	
	method agregarPedido(_fechaDeEntrega, _camiseta, _cantidad, _proveedor){
		fechaDeEntrega = _fechaDeEntrega
		camiseta = _camiseta
		cantidad = _cantidad
		proveedor = _proveedor
		pedidos.add(fechaDeEntrega, camiseta, proveedor)
	}
	
	method agregarProveedor(_proveedor){
		 proveedores.add(_proveedor)
	}
	
	method agregarCamiseta(_camiseta){
		camisetas.add(_camiseta)	
	}
	
	method cambiarColor(_camiseta, _color, _proveedor){
		_proveedor.cambiarColor(_camiseta, _color)
	}
	
	
	}
	
class Centros{
		var lista_pedidos=[]
	
	
	method agregarProveedor(_pedido){
		 lista_pedidos.add(_pedido)
	}
	
	
	
		
		
	
	
}	
class  CentroBaratija inherits Centros{
	

	
	

	
	method tamanoDelPedido(){
	   
		return pedidos.size()>9
		
	}
}
class CentroCheto inherits Centros{
	
	
	
	
	 method tamanoDelPedido(){
	
		return pedidos.size()<21
		
	}
	
	
}
	

class Aeros inherits Centros{
	
	
	
	
	 method tamanoDelPedido(){
	
		return pedidos.size()
		
	}
	
	
}











class Pedidos{
	var camisetas=[]
var 
	 proveedores =[]
	

	
	method algregarPedido(_camiseta){
		if (_camiseta.calcularCosto()>=120){
elpedido.agregar(_camiseta)



}}
	method agregarProveedor(_proveedor){
		 proveedores.add(_proveedor)
	}
	
}
class Pedidos2{
	var camisetas=[]
	var proveedores =[]
	method algregarPedido(_camiseta){
		if ((_camiseta.calcularCosto()>650) &&( _camiseta.color()=='rojo')){
camisetas.add(_camiseta)}


}
method agregarProveedor(_proveedor){
		 proveedores.add(_proveedor)
	}
	

}

class Pedidos3{
	var camisetas=[]
	

	

	
	method algregarPedido(_camiseta){
	    
elpedido.agregar(_camiseta)


}}

