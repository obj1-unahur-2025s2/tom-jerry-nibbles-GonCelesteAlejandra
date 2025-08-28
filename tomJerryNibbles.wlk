object tom {
    var energia = 50
    
    method comer(unRaton) {
        energia = 1000.min(energia + 12 + unRaton.peso())
        unRaton.serComido()
    }
    method energia() {return energia}

    method correr(distancia) { //aca distancia es un parametro, referencia
        energia = 0.max(energia - distancia / 2)
    }

    method velocidadMaxima() {
        return 5 + energia / 10
    }

    method puedeCazar(unaDistancia){
      return energia >= unaDistancia / 2
    }

    method cazar(unRaton,unaDistancia){ //aca distancia es un argumento, le estoy pasando el valor del parametro
      if(self.puedeCazar(unaDistancia)) {  
        self.correr(unaDistancia)
        self.comer(unRaton)
      }
    }
}

object jerry {
  var edad = 2

  method peso() {
    return edad * 20
  }

  method cumplirAnios() {
    edad = edad + 1
  }

  method serComido(){}
}


object nibbles {
  method peso() {
    return 35
  }

  method serComido(){}
}

// Inventar otro ratón

object bizcocho{
  var estaSeco = true

  method peso(){
    if(estaSeco) {return 20}
    else {return 30}
  }

  method serComido(){
    estaSeco = false
  }
}