//  Cholor App by Roberto Hernández Tamayo on 09/07/18.
//  Copyright © 2018 Roberto Hernandez Tamayo.

import UIKit
import Hero

// Navegación

extension InicioViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irJuego" {
            // Música
            guard let fondoReproductor = AppDelegate.compartido().musicaFondoReproductor, let botonReproductor = AppDelegate.compartido().botonJugarReproductor else { return }
            fondoReproductor.volume = 0.2
            botonReproductor.play()
            // Vista controladora de destino
            let juegoViewController = segue.destination as! JuegoViewController
            // Transición
            juegoViewController.hero.isEnabled = true
            juegoViewController.hero.modalAnimationType = .selectBy(presenting: .zoom, dismissing: .zoomOut)
        }
    }
}
