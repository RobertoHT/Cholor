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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

