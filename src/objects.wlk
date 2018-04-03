object drChapatin {
	var bolsita = 0 /* Cuál caja de dinero */
	const valorConsulta = 5
	
	method atender(paciente) {
		paciente.caminar(10)
		self.cobrar(paciente)
	}
	/* Objeto como parámetro cuando no se conoce el nombre
	 * No conozco el nombre del objeto pero sé que tiene el método */
	method cobrar(paciente){
		paciente.pagar(valorConsulta)
		bolsita += valorConsulta
	}
	method descansar(){
		bolsita = 0
	}
}

object elChavo{
	var cansancio = 100
	var plata = 10
	var doctor = drChapatin

	method caminar(metros){
		cansancio += metros * 10
	} /* Parámetro ingresado por teclado - numérico */
	
	method descansar() {
		cansancio = 0
	}
	method pagar(monto) {
		plata -= monto
	}
	method accidente(){
		doctor.atender(self)
	}
	method cambiarDr(nuevo){
		doctor = nuevo
	}
}

object gregory{
	var asistente = cameron
	method atender(paciente) {
		asistente.atender(paciente)
	}
	method cambiarAsistente(nuevo){
		asistente = nuevo
	}
	method accidente() {
		self.atender(self)
	}
	method descansar() = "z.z.z."
	method caminar(metros){}
	
	method pagar(monto){}
}

object cameron{
	method atender(paciente) {
		paciente.descansar()
	}
}