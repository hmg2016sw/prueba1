//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Henry Molina Gómez on 30/01/16.
//  Copyright © 2016 Henry Molina Gómez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreDePais: UILabel!
    
    @IBOutlet weak var nombreDeHamburguesa: UILabel!
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    let colores = Colores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dameUnPaisUnaHamburguesa() {
        
        nombreDePais.text = paises.obtenPais();
        nombreDeHamburguesa.text = hamburguesas.obtenHamburguesas();
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }
    
    


}

