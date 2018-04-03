class Persona {
	var denominado
	var platosComidos 
	constructor(_denominado,_platosComidos){
		denominado=_denominado
		platosComidos=_platosComidos
	}
	method comerPlatosdecomida(cantida){
  platosComidos+=cantida
}
  method cantidadPlatosComidos(){
  	
  	return platosComidos
  }
  
}

class CriticoCulinario inherits Persona{
		var horas_tv
		constructor(_denominado,_platosComidos,_horas_tv)=super (_denominado,_platosComidos){
			
			horas_tv=_horas_tv
			
		}
		method SosbuenaOnda(){
			return horas_tv>=platosComidos*10
		}
		
}
class Deglutidores inherits Persona{
		var veiculo
		constructor(_denominado,_platosComidos,_veiculo)=super (_denominado,_platosComidos){
			
			veiculo=_veiculo
			
		}	method SosbuenaOnda(){
			return veiculo or platosComidos>20
		}
		
}
class Bodegon{
	var carta
	constructor (_carta){
		
		carta=_carta
		
	}
	method valeLapena(){
		
		return carta>=escualaGastronomica.alumnosquvanDegirasTamano()
		
	}
	
	
	
}

class Restaurante{
	var calificacion
	var chef
	
	constructor (cali,cheff){
		calificacion=cali
		chef=cheff
		
		
	}

	method valeLapena(){
		
		return calificacion>=3 and (escualaGastronomica.profesores(chef) or televisio.ver(chef))
	}
	
}
class RestauranteEntico inherits  Restaurante{
	var tipo
	constructor (cali,cheff,_tipos) = super (cali,cheff){
		 tipo=_tipos
		
	}
	
	override  method valeLapena(){
		
		return super()or televisio.ver2(tipo)
	}
}

object escualaGastronomica{
	
 //var degira_restaurantes=[]
 var listaDegira=[]
 //var degira_Bodegon=[]	
var almnos =[] 
var chef=["juan","jose"]
var almnosgira =[] 
method agragarAlunos(alumno){
	almnos.add(alumno)
	
}method listaGiraa(lugar){
	listaDegira.add(lugar)
	
}
method agragargira(alumno){
	almnosgira.add(alumno)}
method profesores(chef_){
return chef.contains(chef_)}
method alumnosquvanDegiras(){
	
	return almnosgira}
	method chefdelaEsucla(){
		
		return chef
	}
method alumnosquvanDegirasTamano(){
	
	return almnosgira.size()}
method alumnosquvanDegira(){
	 almnosgira =almnos.filter({alumnoo=>alumnoo.SosbuenaOnda()})
	
}
method execionr(asd){

	if (asd) return true
	else
throw new Exception("un alumno no puede ir")}

method otrometodo(){
	
	return self.execionr(almnosgira.all({alumno=>alumno.SosbuenaOnda()})) 
	
}

method valelaPenalagira(){
	
   
	
	return listaDegira.all({gira=>gira.valeLapena()}) 
	
	
	//almnosgira.all({alumno=>alumno.SosbuenaOnda()})

} 
	

//method valelaPenalagira(){
 // return  degira_Bodegon.all({bodegon=>bodegon.valeLapena(almnosgira.size())}) and degira_restaurantes.all({restaurante=>restaurante.valeLapena(chef)})
//}
method realizarUnaGira(){
	if (self.valelaPenalagira()){
		 almnosgira.forEach({alumno=>alumno.comerPlatosdecomida(listaDegira.size())})}
		
		//(degira_Bodegon.size()+degira_restaurantes.size())})
		
	}
	
method EstudanteConmasPlatosComidaos(){
	return almnos.max({alumno=>alumno.cantidadPlatosComidos()})
	
}
}


object televisio{
	var chef= ["juan","pedro"]
	var listaRES=["Camboya, Etiopía , Moldavia"]
	method ver(chef_){
		
		return chef.contains(chef_)
	}

	method ver2(tiposs){
		
		return listaRES.contains(tiposs)
	}
}

//1)aprobechando le polimorfimo valeLapena() que tine los lugares de  comida puedo agragar un bar sin modificar el codigo
//2)crearia el objeto desglutidor y critico fuera de la class que implemente el metodo sos buena onda con polimorfismo
// les seteo las valore en el contrutor deglutidor o critico sies delutidor el metodo actua de una manera si no de otra

//

