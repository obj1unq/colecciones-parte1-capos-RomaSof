object rolando{

    const mochila = #{} //es constante porque es siempre la misma mochila
    var property capacidad = 2
    var property hogar = castillo
    const historial = []

    method encontrar(artefacto) {
      if(mochila.size() < capacidad){
        mochila.add(artefacto)
      }
      historial.add(artefacto) //en orden va llevando registro de lo que encuentra
      
    }

    method mochila() {
      return mochila
    }

    method llegarAHogar() {
      hogar.almacenar(mochila)
      mochila.clear()
    }

    method posesiones() {
      return mochila + hogar.cofre() //se crea una nueva colección
    }

    method posee(artefacto) {
      return self.posesiones().contains(artefacto)
    }

    method historial() {
      return historial
    }

    method artefactoenHistorial(indice) {
      return historial.get(indice)
    }

}

//lugares
object castillo {

    const property artefactos = #{}
    var property cofre = #{}

    method almacenar(_artefactos) {
      cofre.addAll(_artefactos)
    }

}

//elementos
object espada{}

object collar{}

object libro{}

object armadura {}