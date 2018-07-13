//: [Tabla de Contenidos](Tabla%20de%20Contenidos)
//: ### Manejo de Errores

import Foundation

var estadoEstrella = "brilla"
var estadoAgujeroNegro: String? = nil

func devolver(_ estado: String) -> String {
    return "la estrella \(estado)"
}

devolver(estadoEstrella)
//devolver(estadoAgujeroNegro) //devuelve error, porque el estado del agujero negro es nil, es decir, vacio no existe.

//Manejando el error con Guard Let

func devolverManejandoError(_ estado: String?) -> String {
    guard let estadoActual = estado else {
        return "El estado del agujero negro es vacío"
    }
    return "la estrella \(estado)"
}

devolverManejandoError(estadoEstrella)
devolverManejandoError(estadoAgujeroNegro)
