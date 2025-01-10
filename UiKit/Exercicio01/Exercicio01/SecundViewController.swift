//
//  SecundViewController.swift
//  Exercicio01
//
//  Created by Wesley Nogueira on 13/08/24.
//

import UIKit

class SecundViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let mensager = UILabel()
        mensager.text = "Outra Tela"
        mensager.frame = CGRect(x: 30, y: 30, width: 100, height: 30)
        view.addSubview(mensager)
    }

}
