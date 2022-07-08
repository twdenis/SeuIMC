

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    
    
    @IBOutlet weak var labelAltura: UILabel!
    @IBOutlet weak var labelPeso: UILabel!
    @IBOutlet weak var sliderAltura: UISlider!
    @IBOutlet weak var sliderPeso: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func alteraAlturaSlider(_ sender: UISlider) {
        labelAltura.text = String(format: "%.2f", sender.value) + "m"
     
    }
    
    @IBAction func alteraPesoSlider(_ sender: UISlider) {

        //print(String(format: "%.0f", sender.value))
        labelPeso.text = String(format: "%.0f", sender.value) + "Kg"
    }
  
    @IBAction func calcular(_ sender: UIButton) {
        let altura = sliderAltura.value
        let peso = sliderPeso.value
      
        calculatorBrain.calcularIMC(altura: altura, peso: peso)
        self.performSegue(withIdentifier: "irParaResultado", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irParaResultado" {
            let destinoVC = segue.destination as! ResultViewController
            destinoVC.valorIMC = calculatorBrain.gerarValorIMC()
            destinoVC.dica = calculatorBrain.gerarDica()
            destinoVC.cor = calculatorBrain.gerarCor()
        }
    }
}

