//
//  ViewController.swift
//  Busqueda
//
//  Created by Mari Kurata on 04/02/18.
//  Copyright © 2018 Mari Kurata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var introText: UITextField!
    
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var listado: UILabel!
    var lista : [String] = ["Maria", "Hector", "Kimi", "David", "Oscar",  "Diego", "Diego"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = "Escribe un número a buscar"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func searchPressed(_ sender: UIButton) {
        
        let textFieldVal = introText.text
        let textFieldValMin = textFieldVal?.lowercased()
        let listaMin = lista.map{ String($0).lowercased()}
    
        if listaMin.contains(textFieldValMin!){
            let afirmativo = "Si hemos entrado a \"\(textFieldVal!)\"."
            var number : Int = 0
            resultLabel.text = afirmativo
            for n in listaMin{
                if (textFieldValMin! == n){
                    number = number + 1
                    listado.text = "Resultados encontrados: " + String(number)
                }
            }
            
        }
        else{
            resultLabel.text = "Lo sentimos, no hemos encontrado a \"\(textFieldVal!)\"."
            listado.text = ""
        }
    }


}
