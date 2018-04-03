import materiales.*
import camisetas.*
import proveedores.*
 import example.*


object sacachispas {
	method probarCamiseta(prenda){
		return prenda.gradoResistencia() >= 9
	}
}

object sanmiguel {
	method probarCamiseta(prenda){
		return prenda.color() == 'verde'
	}
}