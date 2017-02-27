//
//  MasaViewController.swift
//  Pizza
//
//  Created by Victor Ernesto Velasco Esquivel on 26/02/17.
//  Copyright © 2017 Victor Ernesto Velasco Esquivel. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController {
    var pizza = pizzaEntity()
    var sMasa : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sMasa = "Delgada"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //obtiene clase del siguiente controlador
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista=segue.destination as! QuesoViewController
        pizza.agregaMasa(masaNueva: sMasa)
        sigVista.pizza = pizza
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
