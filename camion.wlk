import cosas.*


object camion {
    const cosasCargadas = []

    method agregarCosas(unaCosa) {
      cosasCargadas.add(unaCosa)
    }

    method cosaMasPesada()= cosas.max({c => c.peso()}).peso()


}
