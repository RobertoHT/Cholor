//
//  InicioViewController+Navegacion.swift
//  Cholor
//
//  Created by Roberto Hernández Tamayo on 13/07/18.
//  Copyright © 2018 Roberto Hernandez Tamayo. All rights reserved.
//

import UIKit
import Hero

extension InicioViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irJuego" {
            let juegoViewController = segue.destination as! JuegoViewController
            juegoViewController.hero.isEnabled = true
            juegoViewController.hero.modalAnimationType = .selectBy(presenting: .zoom, dismissing: .zoomOut)
        }
    }
}
