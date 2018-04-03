import camiseta.*
import camiseta.*
import proveedores.*
import example.*

object poliester {
	const resistencia = 4
	const costoBase = 300
	const costoAgregado = 100
	
	method costoBase(color){
		if (color == 'negro')
			return costoBase + costoAgregado
		else
			return costoBase
	}
	method costoAdicional(){
		return 0	
	}
	method resistencia() {
		return resistencia
	}
}

object dryfit {
	const resistencia = 9
	const costoBase = 550
	
	method costoBase(color){
		return costoBase
	}
	method resistencia() {
		return resistencia
	}
	method costoAdicional(){
		return 100	
	}
}