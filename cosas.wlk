object knightRider {

    method peso() = 500

    method peligrosidad() = 10
}


object bumblebee {
    var estaTransformadoRobot = false
    
    method peso() = 800

    method peligrosidad()=
    if (estaTransformadoRobot) 30
    else 15

    method transformarse(){
        estaTransformadoRobot = !estaTransformadoRobot
    }

}


object paqueteDeLadrillos {
  var property ladrillos = 0

  method  peso() = ladrillos * 2
  
  method peligrosidad() = 2

}


object arenaAGranel {
  var property peso = 0

  method peligrosidad() = 1
}


object bateriaAntiaerea {
    var  estaCargada = false

    method peso() = 
    if (tieneMisiles) 300
    else 200

    method peligrosidad() = 
    if (tieneMisiles) 100
    else 0

    method cargar() {
      estaCargada = true
    }

    method descargar() {
      estaCargada = false
    }
  
}


object contenedorPortuario {
    const cosas = []

    method agregarCosa(unaCosa) {
      cosas.add(unaCosa)
    }

    method peso() {
      return 100 + cosas.sum({c => c.peso()})
    }

    method peligrosidad() {
      if (cosas.isEmpty()) return 0
      return cosas.max({c => c.peligrosidad()}).peligrosidad()
    }
  
}


object residuosRadioactivos {
  var property peso = 0

  method peligrosidad() = 200

}


object embalajeDeSeguridad {
  var property cosaEnvuelta = cosaNulleable

  method peso() = cosaEnvuelta.peso()

  method peligrosidad() = cosaEnvuelta.peligrosidad()* 0.5 
}


object cosaNulleable {
  method peso() = 0

  method peligrosidad() = 0 
}