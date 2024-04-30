//
//  RectangularViewController.swift
//  612-CalculadoraVolumenes
//
//  Created by Donovan Vince Lara Alvarado on 22/04/24.
//

import UIKit

class RectangularViewController: UIViewController {

    @IBOutlet weak var txtLitrosReales: UILabel!
    @IBOutlet weak var txtLitrosTeoricos: UILabel!
    @IBOutlet weak var txtAlto: UITextField!
    @IBOutlet weak var txtAncho: UITextField!
    @IBOutlet weak var txtLargo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCalcularRectangular(_ sender: UIButton) {
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
            
            // No necesitas obtener el valor de litrosTeoricos ni litrosReales aquí, ya que estás calculando estos valores basados en el largo, ancho y alto
            
            let litrosTeo = (largo * alto * ancho)/1000
            // Ahora puedes usar litrosTeo para lo que necesites, como mostrarlo en un campo de texto, por ejemplo.
            txtLitrosTeoricos.text = "Los litros teoricos son: \(litrosTeo)L"
            
            let litrosRea = litrosTeo * 0.75
            txtLitrosReales.text = "Los litros Reales son: \(litrosRea)L"
        }

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

