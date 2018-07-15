//  Cholor App by Roberto Hernández Tamayo.
//  Copyright © 2018 Roberto Hernandez Tamayo.

import Foundation

extension JuegoViewController {
    // MARK: - Bola en área del botón inicio
    
    /**
     Añade una notificación para observar si la bola de lanzamiento está sobre el área del botón inicio
     */
    func añadirBolaEnBotonInicioNotificaciones() {
        NotificationCenter.default.addObserver(self, selector: #selector(moverBotonInicio), name: .nombreBolaEnBotonInicioNotificacion, object: nil)
    }
    
    /**
     Mueve el botón de inicio en la pantalla, si observa que la bola de lanzamiento esta sobre su área
     */
    @objc func moverBotonInicio() {
        
    }
}
