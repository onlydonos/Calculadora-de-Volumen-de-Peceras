//
//  SegundoViewController.swift
//  612-CalculadoraVolumenes
//
//  Created by Donovan Vince Lara Alvarado on 22/04/24.
//

import UIKit

class SegundoViewController: UIViewController {

    @IBOutlet weak var txtLitrosReales: UILabel!
    @IBOutlet weak var txtLitrosTeoricos: UILabel!
    @IBOutlet weak var txtAltura: UITextField!
    @IBOutlet weak var txtRadio: UITextField!
    @IBOutlet weak var txtTitulo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCalcular(_ sender: UIButton) {
        guard let txtRadio = txtRadio.text, let radio = Double(txtRadio) else {
            print("El campo esta vacío")
            return
        }
        guard let txtAltura = txtAltura.text, let altura = Double(txtAltura) else {
            print("El campo esta vacío")
            return
        }
        
        let litrosTeo = (altura * 3.141516 * (radio * radio)) / 1000
        txtLitrosTeoricos.text = "Litros reales: \(litrosTeo)L"
        
        let litrosRea = litrosTeo * 0.75
        txtLitrosReales.text = "Litros Reales: \(litrosRea)L"
    }

}
