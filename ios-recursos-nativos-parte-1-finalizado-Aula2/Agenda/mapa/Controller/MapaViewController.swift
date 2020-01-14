//
//  MapaViewController.swift
//  Agenda
//
//  Created by Guilherme Augusto da Rocha Manhani on 13/01/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

class MapaViewController: UIViewController {
    
    var aluno:Aluno?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = getTitulo()
    }
    
    func getTitulo() -> String {
        return "Localizar Alunos"
    }

}
