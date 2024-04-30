//
//  EsferaViewController.swift
//  612-CalculadoraVolumenes
//
//  Created by Donovan Vince Lara Alvarado on 29/04/24.
//

import UIKit

class EsferaViewController: UIViewController {

    @IBOutlet weak var txtLitrosReales: UILabel!
    @IBOutlet weak var txtRadio: UITextField!
    @IBOutlet weak var txtLitrosTeoricos: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnCalcular(_ sender: UIButton) {
        guard let txtradio = txtRadio.text, let radio = Double(txtradio) else{
            return
        }
        
        let litrosTeo = (67/16 * (radio * radio * radio))/1000
        txtLitrosTeoricos.text = "Los litros teoricos son: \(litrosTeo)L"
        
        let litrosRea = litrosTeo * 0.75
        txtLitrosReales.text = "Los litros Reales son: \(litrosRea)L"
    }
}
