//  Cholor App by Roberto Hernández Tamayo on 09/07/18.
//  Copyright © 2018 Roberto Hernandez Tamayo.

import UIKit

/// Clase que corresponde con la pantalla del área de juego
class JuegoViewController: UIViewController {
    // MARK: - Propiedades
    
    // MARK: - Globales
    
    // Variables
    
    /// Volumen inicial de la música de fondo, establecido en el segue de la página inicio
    lazy var volumenMusicaFondo: Double = {
        return AppDelegate.compartido().musicaFondoReproductor.volume
    }()

    // MARK: - Ciclo de vida
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
