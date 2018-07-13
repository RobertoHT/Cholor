//  Cholor App by Roberto Hernández Tamayo on 09/07/18.
//  Copyright © 2018 Roberto Hernandez Tamayo.

import UIKit
import AVFoundation

// Inicializadores

extension InicioViewController {
    /**
     Inicia al escuchar la música de fondo del juego
    */
    func iniciarReproductor() {
        // Escuchar la música del juego
        guard let ruta = Bundle.main.path(forResource: "Cholor", ofType: "m4a") else {
            print("No existe la música en el proyecto")
            return
        }
        let url = URL(fileURLWithPath: ruta)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            player.numberOfLoops = -1
            player.play()
        } catch {
            print(error)
        }
    }
}
