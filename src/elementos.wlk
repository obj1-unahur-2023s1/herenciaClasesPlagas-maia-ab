import plagas.*

class Hogar{
	 var property mugre 
	 const confort
	 method esBueno() = mugre <= (confort/2)
	 method recibirAtaqueDe(plaga){mugre += plaga.nivelDanio()} 
}

class Huerta{
	var property capProduccion
	const nivel
	method esBueno() = capProduccion > nivel
	method recibirAtaqueDe(plaga){
	if (plaga.transmiteEnfermedad()){
		capProduccion -= 10 + (plaga.nivelDanio()*10/100)
	}else{
		capProduccion -= plaga.nivelDanio()*10/100
	   }
    } 
}

class Mascota{
	var property salud 
	method esBueno() = salud > 250
	method recibirAtaqueDe(plaga){
	 if (plaga.transmiteEnfermedad()){
			salud -= plaga.nivelDanio()
		}
	} 
}

class Barrio {
	var property elementos = []
	method esCopado() {
		const buenos = elementos.filter({e => e.esBueno()})
		const noBuenos = elementos.filter({e => not e.esBueno()})
		return buenos.size() > noBuenos.size()
	} 
}

