//
//  PizzaC.swift
//  Pizza
//
//  Created by Victor Ernesto Velasco Esquivel on 26/02/17.
//  Copyright © 2017 Victor Ernesto Velasco Esquivel. All rights reserved.
//

import Foundation


class pizzaEntity {
    var tamanio : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes : [String] = []
    
    init() {
      
    }
    
    func agregaTamanio(tamanioNuevo : String){
        tamanio=tamanioNuevo
    }
    
    func agregaMasa(masaNueva : String){
        masa=masaNueva
    }
    
    func agregaQueso(quesoNuevo : String){
        queso=quesoNuevo
    }
    
    func agregaIngrediente(ingredienteNuevo : String) -> Bool {
        
        if(ingredientes.count==5){
            
            return false
        }
        
        var indexItem = ingredientes.index(of: ingredienteNuevo)
        
        if(indexItem == nil){
            ingredientes.append(ingredienteNuevo)
        }
        
        return true
        
    }
    
    func elminaIngrediente(ingredienteDelete : String){
        var indexItem = ingredientes.index(of: ingredienteDelete)
        
        if(indexItem != nil){
            ingredientes.remove(at: indexItem!)
        }
    }
    
    func getNumIngredientes() -> Int {
        return ingredientes.count
    }
    
    func obtienePiza() -> String {
        var pedido : String
        pedido=""
        pedido.append("Tu orden es el siguiente: \n\t")
        pedido.append("Tamaño:-> \(tamanio)\n\t")
        pedido.append("Masa:---> \(masa)\n\t")
        pedido.append("Queso:--> \(queso)\n\t")
        pedido.append("Ingrediente(s):\n\t")
        for ing in ingredientes{
            pedido.append(" **\(ing)\n\t")
        }
        pedido.append("")
        pedido.append("Disfrute su pizza. 🍕 ☺️")
        
        
        return pedido
        
    }
    
    
    
}
