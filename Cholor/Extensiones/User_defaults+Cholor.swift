//  Cholor App by Roberto Hernández Tamayo on 09/07/18.
//  Copyright © 2018 Roberto Hernandez Tamayo.

import Foundation

/// Claves para obtener el nivel y los puntos guardados en *UserDefaults*
enum ClaveUserDefaults {
    case nivel, puntos, material
}

/// Protocolo para compartir la instancia de *UserDefaults*
protocol DefaultsCompartible {
    static var compartido: UserDefaults { get }
}

extension UserDefaults: DefaultsCompartible {
    // MARK: - Compartido
    
    static var compartido = UserDefaults()
}
