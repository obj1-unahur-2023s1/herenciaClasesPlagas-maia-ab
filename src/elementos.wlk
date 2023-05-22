class Hogar{
	 const mugre 
	 const confort
	 method esBueno() = mugre <= (confort/2)
}

class Huerta{
	const capProduccion
	const nivel
	method esBueno() = capProduccion > nivel
}

class Mascota{
	const salud 
	method esBueno() = salud > 250
}

class Barrio {
	var property elementos = []
	method esCopado() {
		const buenos = elementos.filter({e => e.esBueno()})
		const noBuenos = elementos.filter({e => not e.esBueno()})
		return buenos.size() > noBuenos.size()
	} 
}

