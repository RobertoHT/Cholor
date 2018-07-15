//: [Tabla de Contenidos](Tabla%20de%20Contenidos)
//: ### Notificación

import UIKit
import PlaygroundSupport

extension Notification.Name {
    /// Nombre para la notificación de fin de animación
    static let nombreFinAnimacionNotificacion = Notification.Name("finAnimacion")
}

class NotificacionViewController: LiveViewController {
    var cuadrado: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        añadirCuadrado()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    // Añadir cuadrado en el centro de la pantalla
    
    func añadirCuadrado() {
        cuadrado = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        cuadrado.center = view.center
        cuadrado.backgroundColor = .yellow
        view.addSubview(cuadrado)
    }
}

// Previsualización

PlaygroundPage.current.liveView = NotificacionViewController()
