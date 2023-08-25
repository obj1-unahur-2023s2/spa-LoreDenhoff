
object olivia{
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() = gradoDeConcentracion //getter
	
	method recibirMasaje(){
		gradoDeConcentracion +=3
		console.println("atendio")
	} 
	
	method discutir(){
		gradoDeConcentracion --
	}
	
	method banioDeVapor(){console.println("atendio")}
}

object bruno{
	var esFeliz = true
	var tieneSed = false
	var peso = 5500
	
	method esFeliz() = esFeliz
	method tieneSed() = tieneSed
	method peso() = peso
	
	method recibirMasaje(){
		esFeliz = true
		console.println("atendio")
	}
	
	method banioDeVapor() {
		peso -= 500
		tieneSed = true
		console.println("atendio")
	}
	
	method tomarAgua() {
		tieneSed = false
	}
	
	method comerFideos() {
		peso += 250
		tieneSed = true
	}
	
	method correr(){
		peso -= 300
	}
	
	method verNoticiero() {
		esFeliz = false
	}
	
	method estaPerfecto(){
		return esFeliz && !tieneSed && peso.between(5000,7000)
	}
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var estaContracturado = 0
	var grasaPiel = true
	
	method estaContracturado() = estaContracturado
	
	method recibirMasaje(){
		estaContracturado = 0.max(estaContracturado-2)
		console.println("atendio")
	}
	
	method banioDeVapor() {
		grasaPiel = false
		console.println("atendio")
	}
	
	method comerBigMac(){
		grasaPiel = true
	}
	
	method bajarFosa(){
		grasaPiel = true
		estaContracturado ++
	}
	
	method jugarPaddle() {
		estaContracturado += 3
	}
	
	method diaDeTrabajo(){
		self.bajarFosa()
		self.comerBigMac()
		self.bajarFosa()
	}
	
}