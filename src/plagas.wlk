import elementos.*

class Plaga{ 
	var property poblacion
	method poblaSuf() = poblacion >= 10
	method condicionAd() = true
	method transmiteEnfermedad() = self.poblaSuf() and self.condicionAd()
	method ataque(){poblacion += poblacion*10/100}
	method ataqueAd(){}
	method nivelDanio() = 0
	method atacar(elemento){
		elemento.recibirAtaqueDe(self)
		self.ataque()
		self.ataqueAd()
	}
}

class Cucaracha inherits Plaga{
	var property pesoProm 
	override method nivelDanio() = self.poblacion() / 2
	override method condicionAd() = pesoProm >= 10 
	override method ataqueAd(){pesoProm += 2} 
}

class PulgaYGarrapata inherits Plaga{
	override method nivelDanio() = poblacion * 2
}

class Garrapata inherits PulgaYGarrapata{
	override method ataque(){poblacion += (poblacion*20)/100}
}

class Mosquito inherits Plaga{
	override method nivelDanio() = self.poblacion()
	override method condicionAd() = poblacion % 3 == 0
}