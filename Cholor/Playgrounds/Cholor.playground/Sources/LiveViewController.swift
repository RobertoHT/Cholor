import UIKit

/// Clase base para generar la visualización de una pantalla en la Live View de un Playground.

open class LiveViewController: UIViewController {
    override open func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
    }
}

