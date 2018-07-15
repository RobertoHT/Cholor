//  Cholor App by Roberto Hernández Tamayo.
//  Copyright © 2018 Roberto Hernandez Tamayo.

import Foundation

/// Especifica el tipo de material del que esta compuesto una bola
enum Material: CustomStringConvertible {
    /// Material madera para una bola
    case madera
    /// Material acero para una bola
    case acero
    /// Material plastico para una bola
    case plastico
    /// Material piedra para una bola
    case piedra
    /// Material esponja para una bola
    case esponja
    
    var description: String {
        switch self {
        case .madera: return "madera"
        case .acero: return "acero"
        case .plastico: return "plastico"
        case .piedra: return "piedra"
        case .esponja: return "esponja"
        }
    }
}
