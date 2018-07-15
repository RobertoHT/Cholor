//  Cholor App by Roberto Hernández Tamayo.
//  Copyright © 2018 Roberto Hernandez Tamayo.

import UIKit

/// Clase que corresponde con la pantalla del área de juego
class JuegoViewController: UIViewController {
    // MARK: - Propiedades
    
    // MARK: - Elementos UI
    
    /// Etiqueta con los puntos conseguidos en el juego
    @IBOutlet weak var etiquetaMarcadorPuntos: UILabel!
    /// Etiqueta con el número nivel actual del juego
    @IBOutlet weak var etiquetaMarcadorNivel: UILabel!
    
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

        // UserDefaults
        iniciarUserDefaults()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Marcador
        configurarMarcador()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        // Guardar en UserDefaults el nivel y los puntos al salir del juego
        guard let nivel = etiquetaMarcadorNivel.text,
            let puntos = etiquetaMarcadorPuntos.text else { return }
        UserDefaults.compartido.guardarNivel(nivel)
        UserDefaults.compartido.guardarPuntuacion(puntos)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
