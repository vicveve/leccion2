//
//  QuesoViewController.swift
//  Pizza
//
//  Created by Victor Ernesto Velasco Esquivel on 26/02/17.
//  Copyright © 2017 Victor Ernesto Velasco Esquivel. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var pizza = pizzaEntity()
    var sQueso : String = ""
    let pickerDataSource = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
    
    @IBOutlet weak var cboQUesos: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cboQUesos.dataSource=self
        cboQUesos.delegate=self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    //obtiene clase del siguiente controlador
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(sQueso == "")
        {
            return
        }
        
        let sigVista=segue.destination as! IngredientesViewController
        pizza.agregaQueso(quesoNuevo: sQueso)
        sigVista.pizza = pizza
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
    }
    
 
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        sQueso = pickerDataSource[row]
        return pickerDataSource[row]
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
