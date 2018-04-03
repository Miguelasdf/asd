import materiales.*
import camisetas.*
import proveedores.*
import centros.*
import pedidos.*

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

