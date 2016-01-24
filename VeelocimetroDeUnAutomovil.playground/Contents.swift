//: Un velocimetro de un automóvil

import UIKit

enum Velocidades : Int{
    case Apagado = 0,
    VelocidadBaja = 20,
    VelocidadMedia = 50,
    VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init () {
        velocidad = Velocidades (velocidadInicial: Velocidades.Apagado)
    }
    func cambioDeVelocidad () -> (actual: Int, velocidadEnCadena: String){
        let actual = velocidad.rawValue
        var velocidadEnCadena : String
        
        switch velocidad {
        
        case Velocidades.Apagado:
            velocidadEnCadena = "Apagado"
            velocidad = Velocidades.VelocidadBaja
        
        case Velocidades.VelocidadBaja:
            velocidadEnCadena = "Velocidad baja"
            velocidad = Velocidades.VelocidadMedia
            
        case Velocidades.VelocidadMedia:
            velocidadEnCadena = "Velocidad media"
            velocidad = Velocidades.VelocidadAlta
            
        case Velocidades.VelocidadAlta:
            velocidadEnCadena = "Velocidad Alta"
            velocidad = Velocidades.VelocidadMedia
        }
        
        return (actual, velocidadEnCadena)
        
    }
    
}

var auto = Auto()

for i in 1...20 {
    var valoresVelocidad = auto.cambioDeVelocidad()
    
    print("\(valoresVelocidad.actual), \(valoresVelocidad.velocidadEnCadena)")
}


