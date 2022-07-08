//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Denis on 28/06/22.


import UIKit

class ResultViewController: UIViewController {
    
    var valorIMC: String?
    var dica: String?
    var cor: UIColor?

    @IBOutlet weak var imcLabel: UILabel!
    @IBOutlet weak var dicaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imcLabel.text = valorIMC
        dicaLabel.text = dica
        self.view.backgroundColor = cor
    }
    
    @IBAction func recalcularBotao(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
