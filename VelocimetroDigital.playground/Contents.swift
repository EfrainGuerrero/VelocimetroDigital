//: Playground - noun: a place where people can play

import UIKit

// clase, estructura, enumeraciones

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades){
        self = velocidadInicial
    }

}

class Auto {
    var velocidad : Velocidades
    
    init (){
        self .velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    /*
    funcion:        cambioDeVelocidad
    
    Cambia el valor de velocidad a la siguiente velocidad gradual, 
    por ejemplo:  
        de Apagado cambia a VelocidadBaja,
        de VelocidadBaja cambia a VelocidadMedia
        de VelocidadMedia cambia a VelocidadAlta
        de VelocidadAlta cambia a VelocidadMedia
    
    La función debe regresar una tupla con la velocidad actual 
    y una cadena con la leyenda de la velocidad correspondiente.
    */
    func cambioDeVelocidad () -> (actual: Int, velocidadEnCadena: String) {

        let velocidadActual : Int = velocidad.rawValue
        var velocidadCadena = "";
        
        switch velocidad {

        case .Apagado:
            velocidad = .VelocidadBaja
            velocidadCadena = "Apagado"

        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            velocidadCadena = "Velocidad baja"

        case .VelocidadMedia :
            velocidad = .VelocidadAlta
            velocidadCadena = "Velocidad media"
            
        case .VelocidadAlta :
            velocidad = .VelocidadMedia
            velocidadCadena = "Velocidad alta"
        }
        
        return (velocidadActual, velocidadCadena)
    }
}

let auto = Auto()
var tupla : (actual: Int, velocidadEnCadena: String)

for r in 1...20 {
    tupla = auto.cambioDeVelocidad()
    print ("\(r). \(tupla.actual), \(tupla.velocidadEnCadena) ")
}



