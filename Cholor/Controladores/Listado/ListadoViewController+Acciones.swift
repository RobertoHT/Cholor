//
//  ListadoViewController+Acciones.swift
//  Cholor
//
//  Created by Roberto Hernández Tamayo on 13/07/18.
//  Copyright © 2018 Roberto Hernandez Tamayo. All rights reserved.
//

import UIKit
import Hero

extension ListadoViewController {
    @IBAction func volverPulsado(_ sender: UIButton) {
        self.hero.dismissViewController()
    }
}
