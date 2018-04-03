

class Estampador {
	const servicio = 100 
	const costoAgregado = 100
	var centro
	var listas=[]
	
	
		method lista(aa){
		  listas=aa.agregarProveedor()
	}
	method estampar(camiseta, _leyenda,centro_procesamiento){
		
	
		
		camiseta.cambiarLeyenda(_leyenda)
		  camiseta.agregarAdicional(servicio+self.servicioAgregado(camiseta)+centro_procesamiento. tamanoDelPedido()*0,2)
	}
	
	method cambiarSolicitante( _leyenda,centro_procesamiento) {
	listas.forEach(
{ provedor => provedor.estampar( _leyenda,centro_procesamiento) })}
	method servicioAgregado(camiseta){
		var aux=0
		if (camiseta.saberSiElEstampadoEsLargo())
			aux = costoAgregado
		return aux
	}
}