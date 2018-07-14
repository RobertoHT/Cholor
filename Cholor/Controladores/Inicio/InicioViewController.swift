//  Cholor App by Roberto Hernández Tamayo on 09/07/18.
//  Copyright © 2018 Roberto Hernandez Tamayo.

import UIKit
import AVFoundation

/// Clase que corresponde con la pantalla de inicio de juego
class InicioViewController: UIViewController {
    
    // MARK: - Propiedades
    
    // MARK: - Elementos UI

    /// Este botón inicia el juego
    @IBOutlet weak var botonJugar: UIButton!
    
    // MARK: - Ciclo de vida
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iniciarReproductor()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Volver a establecer el volumen original de la música de fondo
        guard let fondoReproductor = AppDelegate.compartido().musicaFondoReproductor
            else { return }
        let volumen = AppDelegate.compartido().volumenInicial != 0 ? AppDelegate.compartido().volumenInicial : 1
        if fondoReproductor.volume < volumen {
            fondoReproductor.volume = volumen
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

