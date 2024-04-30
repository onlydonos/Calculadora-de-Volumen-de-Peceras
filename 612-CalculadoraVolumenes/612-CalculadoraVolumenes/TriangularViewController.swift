//
//  TriangularViewController.swift
//  612-CalculadoraVolumenes
//
//  Created by Donovan Vince Lara Alvarado on 29/04/24.
//

import UIKit

class TriangularViewController: UIViewController {

    @IBOutlet weak var txtLitrosReales: UILabel!
    @IBOutlet weak var txtLitrosTeoricos: UILabel!
    @IBOutlet weak var txtAlto: UITextField!
    @IBOutlet weak var txtAncho: UITextField!
    @IBOutlet weak var txtLargo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnCalcular(_ sender: UIButton) {
        guard let txtlargo = txtLargo.text, let largo = Double(txtlargo) else {
            print("El campo de largo está vacío o no es un número válido")
            return
        }
        
        guard let txtancho = txtAncho.text, let ancho = Double(txtancho) else {
            print("El campo de ancho está vacío o no es un número válido")
            return
        }
        
        guard let txtalto = txtAlto.text, let alto = Double(txtalto) else {
            print("El campo de alto está vacío o no es un número válido")
            return
        }
        
        
        let litrosTeo = ((largo * alto * ancho)/2)/1000
        txtLitrosTeoricos.text = "Los litros teoricos son: \(litrosTeo)L"
        
        let litrosRea = litrosTeo * 0.75
        txtLitrosReales.text = "Los litros Reales son: \(litrosRea)L"
    }
}
