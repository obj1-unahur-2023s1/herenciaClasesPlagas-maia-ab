class Plaga{ 
	var property poblacion
	method transmiteEnfermedad() = poblacion >= 10
}

class Cucaracha inherits Plaga{
	const pesoProm 
	method nivelDanio() = self.poblacion() / 2
	override method transmiteEnfermedad() = pesoProm >= 10 and self.transmiteEnfermedad()
}

class Pulga inherits Plaga{
	method nivelDanio() = poblacion * 2
}

class Garrapata inherits Plaga{
	method nivelDanio() = poblacion * 2
}

class Mosquito inherits Plaga{
	method nivelDanio() = self.poblacion()
	override method transmiteEnfermedad() = poblacion % 3 == 0
}