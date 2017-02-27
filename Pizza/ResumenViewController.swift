//
//  ResumenViewController.swift
//  Pizza
//
//  Created by Victor Ernesto Velasco Esquivel on 26/02/17.
//  Copyright © 2017 Victor Ernesto Velasco Esquivel. All rights reserved.
//

import UIKit

class ResumenViewController: UIViewController {
    var pizza = pizzaEntity()
    
    @IBOutlet weak var txtResumen: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtResumen.text=pizza.obtienePiza()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func alerta(mensaje : String, titulo: String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func btnFinaliza(_ sender: UIButton) {
        alerta(mensaje: "Su pedido sera enviado", titulo: "Gracias por su compra")
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
