//  Cholor App by Roberto Hernández Tamayo.
//  Copyright © 2018 Roberto Hernandez Tamayo.

// Inicializadores

import UIKit

extension JuegoViewController {
    // MARK: - UserDefaults
    
    func iniciarUserDefaults() {
        // Nivel
        if Int(UserDefaults.compartido.obtenerNivel()) == 0 {
            UserDefaults.compartido.guardarNivel(1)
        }
        // Puntuación
        if Int(UserDefaults.compartido.obtenerPuntuacion()) == 0 {
            UserDefaults.compartido.guardarPuntuacion(200)
        }
    }
}
