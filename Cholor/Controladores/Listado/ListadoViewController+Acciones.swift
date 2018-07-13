//  Cholor App by Roberto Hernández Tamayo on 09/07/18.
//  Copyright © 2018 Roberto Hernandez Tamayo.

import UIKit
import Hero

// Acciones

extension ListadoViewController {
    /**
     Vuelve a la pantalla de inicio
     
     - parameters:
        - sender: el botón de volver
     */
    @IBAction func volverPulsado(_ sender: UIButton) {
        self.hero.dismissViewController()
    }
}
