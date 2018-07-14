//  Cholor App by Roberto Hernández Tamayo on 09/07/18.
//  Copyright © 2018 Roberto Hernandez Tamayo.

import UIKit
import AVFoundation

// Inicializadores

extension InicioViewController {
    /**
     Inicia la reproducción de la música de fondo del juego
    */
    func iniciarReproductor() {
        // Reproducir la música de fondo
        guard let reproductor = AppDelegate.compartido().musicaFondoReproductor else {
            return
        }
        reproductor.play()
    }
}
