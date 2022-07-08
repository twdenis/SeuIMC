//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Denis on 04/07/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//


import UIKit

struct CalculatorBrain {
    var imc: IMC?
   
    mutating func calcularIMC(altura: Float, peso: Float) {
        let valorIMC = peso / (altura * altura)
        let cor = (magro: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), ideal: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), gordo: #colorLiteral(red: 1, green: 0.3873181364, blue: 0.40096018, alpha: 1))
        if valorIMC <= 18.5 {
            imc = IMC(valor: valorIMC, dica: "Tá precisando comer mais!", cor: cor.magro)
            
        } else if valorIMC >= 24.9 {
            imc = IMC(valor: valorIMC, dica: "Tá exagerando na comida!", cor: cor.gordo)
            
        } else {
            imc = IMC(valor: valorIMC, dica: "Tudo nos conformes!", cor: cor.ideal)
           
        }
        
    }
    
    func gerarValorIMC() -> String {
        let converterIMC = String(format: "%.1f", imc?.valor ?? 0.0)
        return converterIMC
    }
    func gerarDica() -> String {
        let dicaGerada = imc?.dica ?? ""
        return dicaGerada
    }
    func gerarCor() -> UIColor {
        let corGerada = imc?.cor ?? .black
        return corGerada
    }
}
