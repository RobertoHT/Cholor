//  Cholor App by Roberto Hernández Tamayo.
//  Copyright © 2018 Roberto Hernandez Tamayo.

import Foundation

/// Claves para obtener el nivel y los puntos guardados en *UserDefaults*
enum ClaveUserDefaults: String {
    case nivel, puntos, material
}

/// Protocolo para compartir la instancia de *UserDefaults*
protocol DefaultsCompartible {
    static var compartido: UserDefaults { get }
}

extension UserDefaults: DefaultsCompartible {
    // MARK: - Compartido
    
    static var compartido = UserDefaults()
    
    // MARK: - Escribir
    
    // MARK: Nivel
    
    /**
     Guarda el nivel del juego en *UserDefaults*
     
     - parameters:
        - nivel: número con el último nivel jugado por el usuario.
     */
    func guardarNivel(_ nivel: Int) {
        UserDefaults.standard.set(nivel, forKey: ClaveUserDefaults.nivel.rawValue)
    }
    
    /**
     Guarda el nivel del juego en *UserDefaults*
     
     - parameters:
        - nivel: número con el último nivel jugado por el usuario.
     */
    func guardarNivel(_ nivel: String) {
        UserDefaults.standard.set(nivel, forKey: ClaveUserDefaults.nivel.rawValue)
    }
    
    // MARK: Puntuación
    
    /**
     Guarda la puntuación del juego en *UserDefaults*
     
     - parameters:
        - puntos: número con los puntos obtenidos en el juego.
     */
    func guardarPuntuacion(_ puntos: Int) {
        UserDefaults.standard.set(puntos, forKey: ClaveUserDefaults.puntos.rawValue)
    }
    
    /**
     Guarda la puntuación del juego en *UserDefaults*
     
     - parameters:
        - puntos: número con los puntos obtenidos en el juego.
     */
    func guardarPuntuacion(_ puntos: String) {
        UserDefaults.standard.set(puntos, forKey: ClaveUserDefaults.puntos.rawValue)
    }
    
    /**
     Guarda el material de la bola en *UserDefaults*
     
     - parameters:
        - material: el material del que esta hecha la bola.
     */
    func guardarMaterial(_ material: Material) {
        UserDefaults.standard.set(material, forKey: ClaveUserDefaults.material.rawValue)
    }
}
