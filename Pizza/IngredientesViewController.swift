//
//  IngredientesViewController.swift
//  Pizza
//
//  Created by Victor Ernesto Velasco Esquivel on 26/02/17.
//  Copyright © 2017 Victor Ernesto Velasco Esquivel. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {
    var pizza = pizzaEntity()
    
    
    @IBOutlet weak var chkAnchoa: UISwitch!
    @IBOutlet weak var chkPina: UISwitch!
    @IBOutlet weak var chkPimiento: UISwitch!
    @IBOutlet weak var chkCebolla: UISwitch!
    @IBOutlet weak var chkAceituna: UISwitch!
    @IBOutlet weak var chkSalchicha: UISwitch!
    @IBOutlet weak var chkPavo: UISwitch!
   
    @IBOutlet weak var chkPeperoni: UISwitch!
    @IBOutlet weak var chkJamon: UISwitch!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //obtiene clase del siguiente controlador
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let bCorrecto : Bool = armaListaIngredientes()
        
        if(!bCorrecto){
            alerta(mensaje: "El maximo de ingredientes son 5.", titulo: "Verifique su pedido")
            return
        }
        
        if(pizza.getNumIngredientes() == 0)
        {
            alerta(mensaje: "No se tienen ingredientes", titulo: "Verifique su pedido")
            return
        }
        
        let sigVista=segue.destination as! ResumenViewController
        
        sigVista.pizza = pizza
        
    }
    
    func alerta(mensaje : String, titulo: String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    func armaListaIngredientes() -> Bool{
        pizza.ingredientes.removeAll()
        
        var bCorrecto = true
        
        if (chkJamon.isOn)
        {
            bCorrecto = pizza.agregaIngrediente(ingredienteNuevo: "Jamón")
        }
        if (chkPeperoni.isOn)
        {
            bCorrecto = pizza.agregaIngrediente(ingredienteNuevo: "Pepperoni")
        }
        if (chkPavo.isOn)
        {
            bCorrecto = pizza.agregaIngrediente(ingredienteNuevo: "Pavo")
        }
        if (chkSalchicha.isOn)
        {
            bCorrecto = pizza.agregaIngrediente(ingredienteNuevo: "Salchicha")
        }
        if (chkAceituna.isOn)
        {
            bCorrecto = pizza.agregaIngrediente(ingredienteNuevo: "Aceituna")
        }
        if (chkCebolla.isOn)
        {
            bCorrecto = pizza.agregaIngrediente(ingredienteNuevo: "Cebolla")
        }
        if (chkPimiento.isOn)
        {
            bCorrecto = pizza.agregaIngrediente(ingredienteNuevo: "Pimiento")
        }
        if (chkPina.isOn)
        {
            bCorrecto = pizza.agregaIngrediente(ingredienteNuevo: "Piña")
        }
        if (chkAnchoa.isOn)
        {
            bCorrecto = pizza.agregaIngrediente(ingredienteNuevo: "Anchoa")
        }
        
        
        return bCorrecto
        
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
