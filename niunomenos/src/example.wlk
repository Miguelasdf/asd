object pais{
	var presidentes=[]
	method agregaPresidentes(presidente){
		
		presidentes.addAll(presidente)
		
	}
	method mayorImagenPositiva(){
	return	presidentes.sortBy({mayor,menor=>mayor.imagaenPositiba()>menor.imagaenPositiba()}).take(1)
//		
		
		
	}	method realizoMasDe4Accione(presidente){
		return presidente.acciones()>3
		
	}
    method cumplirPromesas(promesa,presi){
    	
    	promesa.forEach({x=>presi.cumplirPromesa(x)})
    }
	
	
}
class Presidente{
     var discursos=[]
     var inguraciones=[]
     var promesa=[]
     var promesaCumplida=[]
     var denucias=[]
     var muerto=1
    var acciones=0
    method aaa(aaa,bbb){
   
    	
    }method ana(acto){
    	self.anadir(acto,promesa)
    	
    }
    
     method anadir(acto,lista){
    
     	lista.add(acto)
     	acciones=acciones+1
     }  method acciones(){
     	return acciones
     }
     method prom(){
     	return promesa
     }
     method cacular(lista){
     return	lista.sum({calculando=>calculando.acto()})
     }
     
	method Discurso(){
		
		
   return   self.cacular(discursos)
			
		
		}
		method inguraciones(){
	return	 self.cacular(inguraciones)
		
	  
			
		
		}		method promesasSincuplir(){
	return	 self.cacular(promesa)
		
			
		}method promesaCumplidas(){
	return	 self.cacular(promesaCumplida)
		}
		method cumplirPromesa(promea){
			promesaCumplida.add(promea)
			promesa.remove(promea)
			
		}
		
		method imagaenPositiba(){
			return [self.promesasSincuplir()-self.promesaCumplidas()+self.inguraciones()+ self.Discurso()-self.denucias()]*muerto
			
		}
		method denucias(){
		return	 self.cacular(denucias)
		}

	
	}
	class Discurso{
		var gente
		var importancia
		var aplauso
		constructor (gentee,importanciaa,aplausoo){
			gente=gentee
			importancia=importanciaa
			aplauso=aplausoo
	}
	method acto(){
		
	return gente*importancia*aplauso	
	}
	}
	class Promesa inherits Discurso{
	
		
		
	override	method acto(){
			return  -super()*2
		}
			
	}
	
	class InaguracionObras {
		var pesronasAfectadas
		var importancia
		var obra
				constructor (pesronasAfectadass,importanciaa,obraa){
			pesronasAfectadas=pesronasAfectadass
			importancia=importanciaa
			obra=obraa}
		method acto(){
			
		return	pesronasAfectadas*importancia*obra.obra()
			
		}
	}
	object viales{
		
		method obra(){
			
			return 1.1
		}
	}
	class Denucias{
		var politicos=[]
		var denunciante
		var personasQuevenElPrograma
		var importanciaDenucia
		var acciones=0
		constructor (personasQuevenElProgramaa,importanciaDenuciaa,denunciantee){
			
			
			personasQuevenElPrograma=personasQuevenElProgramaa
			importanciaDenucia=importanciaDenuciaa
			denunciante=denunciantee
		}
		method anadirPoliticoAlalista(politico){
			politicos.add(politico)
		}
		method esPolitico(){
		if (politicos.contains(denunciante)){
			return denunciante.sdenunciante()
		}else {
			
			return personasQuevenElPrograma/2
		}
			
		}	
		method acto(){
			
		return	importanciaDenucia*personasQuevenElPrograma *self.esPolitico()
			
		}
			
			
		}
		
	class Politico{
	var seguidoresEnREd
	constructor (seguidores){
	seguidoresEnREd	=seguidores
	}
	method 	seguidores(){
		
		return seguidoresEnREd
	}
	 method sosPolitico()
		
	}
	
		object habitaciones{
		
		method obra(){
			
			return 1.2
		}
	}	object salud{
		
		method obra(){
			
			return 1.5
		}
	}
	
