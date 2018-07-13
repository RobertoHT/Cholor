//
//  JuegoViewController+Navegacion.swift
//  Cholor
//
//  Created by Roberto Hernández Tamayo on 13/07/18.
//  Copyright © 2018 Roberto Hernandez Tamayo. All rights reserved.
//

import UIKit
import Hero

extension JuegoViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irListado" {
            let juegoViewController = segue.destination as! ListadoViewController
            juegoViewController.hero.isEnabled = true
            juegoViewController.hero.modalAnimationType = .selectBy(presenting: .slide(direction: .left), dismissing: .slide(direction: .right))
        }
    }
}
