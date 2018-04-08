/** First Wollok example */
object wollok {
	
	var algo2= "asd a"
	var algo1
	method howAreYou(algo) {
		return algo.size()
	}
}

object echisoBasico{
	method poderDeEchiso(nombre){
		return 10
		
	}
	
	
	
}
object hechisoporNombre{
	var nombreDelHechiso="espencto malefico"
	method poderDeEchiso(){
		return nombreDelHechiso
		
	}
	method cambiarNombreHechiso(nombre){
		
		nombreDelHechiso=nombre
		
	}
	
	
}
object fuerzaOscura{
	var fuerzaOscura=1
	method valorFuerzaOscura(){
		
		
		return fuerzaOscura
	}
	method setFuerzaOscura(setear){
		
		fuerzaOscura=setear
	}
	
	
}


object eclipse{
	
	method eclipse() {
		
		fuerzaOscura.setFuerzaOscura(fuerzaOscura.valorFuerzaOscura()*2)
	}
	
	
	
	
	
}

