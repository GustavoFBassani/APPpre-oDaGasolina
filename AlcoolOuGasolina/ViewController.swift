//
//  ViewController.swift
//  AlcoolOuGasolina
//
//  Created by Gustavo Ferreira Bassani on 03/08/23.
//

import UIKit

class ViewController: UIViewController {
    //Outlets
    
  
    @IBOutlet weak var recebePrecoAlcool: UITextField!
    @IBOutlet weak var recebePrecoGasolina: UITextField!
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var botaoCalculadora: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuracoesLayout()
        
    }
    
    func configuracoesLayout() {
        resultado.numberOfLines = 0
        botaoCalculadora.layer.cornerRadius = 16
        
    }
    
    
    @IBAction func Calculadora(_ sender: UIButton) {
        if let recebeAlcool  = recebePrecoAlcool.text, let recebeGasolina  = recebePrecoGasolina.text {
            guard let Alcool = Double(recebeAlcool) else { return resultado.text = "Por favor, digite um número" }
            guard let Gasolina = Double(recebeGasolina) else { return resultado.text = "Por favor, digite um número" }
            
            
            if (Alcool < 0.7*Gasolina) {
                resultado.text = " O Alcool é mais vantajoso"
            } else if (Alcool > 0.7*Gasolina) {
                resultado.text = " A gasolina é mais vantajosa"
            } else {
                resultado.text = " Os dois são equivalentes"
            }
        }
    }
}
