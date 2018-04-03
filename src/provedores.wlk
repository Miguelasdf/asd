
class Centro {

	var lista_pedidos=[]
	
	
	method agregarProveedor(){
		 return  lista_pedidos
	}
	method mandarPedido(lista_pedidoss){
	if (lista_pedidoss.cantidadCamistas()>10 && lista_pedidoss.forAll( { objeto => objeto.precio() > 10 })){
		lista_pedidos.addAll(lista_pedidoss)
	}}
	method mandarpedido2(){
		
		lista_pedidos.forEach({camis=>camis.modificar()})
		
		
}
}


class Cheto {

	var lista_pedidos=[]
	
	
	method agregarProveedor(){
		 return  lista_pedidos
	}
	method mandarPedido(lista_pedidoss){
	if (lista_pedidoss.cantidadCamistas()<21 && lista_pedidoss.forAll( { objeto => objeto.precio() > 650 && objeto.color()=='rojo'})){
		lista_pedidos.addAll(lista_pedidoss)
	}}
	method mandarpedido2(){
		
		lista_pedidos.forEach({camis=>camis.modificar()})
		
		
}
}
class Aereo {

	var lista_pedidos=[]
	
	
	method agregarProveedor(){
		 return  lista_pedidos
	}
method agregarlistaa(pedido){
		lista_pedidos.add(pedido) 
}
}

class Lista_pedidos{
	
	var camisetas = []
	var fechaDeEntrega = new Date()
		var proveedores=[]
	
	method agregarcmiseta(camiseta,prov){
		camisetas.add(camiseta)
		proveedores.add(prov)
	}



 method cantidadCamistas(){
	
	return camisetas.size()
	
}

}