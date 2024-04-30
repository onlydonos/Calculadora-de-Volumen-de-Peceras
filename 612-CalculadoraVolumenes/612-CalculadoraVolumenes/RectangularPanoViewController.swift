//
//  RectangularPanoViewController.swift
//  612-CalculadoraVolumenes
//
//  Created by Donovan Vince Lara Alvarado on 29/04/24.
//

import UIKit

class RectangularPanoViewController: UIViewController {

    @IBOutlet weak var txtAlto: UITextField!
    @IBOutlet weak var txtLargo: UITextField!
    @IBOutlet weak var txtAncho: UITextField!
    @IBOutlet weak var txtLitrosReales: UILabel!
    @IBOutlet weak var txtLitrosTeoricos: UILabel!
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
        
        let radio = (largo / 2)
        let rectangulo = (largo * ancho * alto)
        let litrosTeo = rectangulo/1000
        let semicirculo = (((alto * 3.1415 * (radio * radio)))/(2))/(1000)
        let totalLitros = litrosTeo + semicirculo
        txtLitrosTeoricos.text = "Los litros teoricos son: \(totalLitros)L"
        
        let litrosRea = totalLitros * 0.75
        txtLitrosReales.text = "Los litros Reales son: \(litrosRea)L"
    }
    
}
