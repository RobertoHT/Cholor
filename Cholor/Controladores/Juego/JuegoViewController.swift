//  Cholor App by Roberto Hernández Tamayo.
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
    /// Material que compone la bola
    lazy var material: Material = {
        return UserDefaults.compartido.obtenerMaterial()
    }()
    /// Nivel del juego. Sólo se usa a nivel interno para las lecturas a *UserDefaults*
    lazy var valorNivel: Int = {
        return UserDefaults.compartido.obtenerNivel()
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
