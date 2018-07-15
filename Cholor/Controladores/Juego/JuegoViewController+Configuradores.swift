//  Cholor App by Roberto Hernández Tamayo.
//  Copyright © 2018 Roberto Hernandez Tamayo.

import UIKit

// Configuradores

extension JuegoViewController {
    // MARK: - Etiquetas
    
    /**
     Configura los números para el nivel y la puntuación en el marcador
     */
    func configurarMarcador() {
        etiquetaMarcadorNivel.text = UserDefaults.compartido.obtenerNivel()
        etiquetaMarcadorPuntos.text = UserDefaults.compartido.obtenerPuntuacion()
    }
}
