class Plaga{ 
	var property poblacion
	method poblaSuf() = poblacion >= 10
	method condicionAd() = true
	method transmiteEnfermedad() = self.poblaSuf() and self.condicionAd()
}

class Cucaracha inherits Plaga{
	const pesoProm 
	method nivelDanio() = self.poblacion() / 2
	override method condicionAd() = pesoProm >= 10 
}

class PulgaYGarrapata inherits Plaga{
	method nivelDanio() = poblacion * 2
}



class Mosquito inherits Plaga{
	method nivelDanio() = self.poblacion()
	override method condicionAd() = poblacion % 3 == 0
	
	
}