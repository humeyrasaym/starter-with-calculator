//
//  ViewController.swift
//  starterWithCalculator
//
//  Created by Hümeyra SAYIM on 11/19/25.
//

import UIKit

class ViewController: UIViewController {

    // UI Elements
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    // Variables
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "Result"
    }

    @IBAction func sumClicked(_ sender: Any) {
        calculate(operation: +)
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        calculate(operation: -)
    }
    @IBAction func multiplyClicked(_ sender: Any) {
        calculate(operation: *)
    }
    @IBAction func divideClicked(_ sender: Any) {
        calculate(operation: /)
    }

    // +, -, *, / gibi aksiyonlar iki int degeri alip int deger donduren fonksiyonlar oldugu icin asagidaki tanimlamayi yaptim
    func calculate(operation: (Int, Int) -> Int) {
        if let first = Int(firstNumber.text ?? "") {
            if let second = Int(secondNumber.text ?? "") {
                result = operation(first, second)
                resultLabel.text = String(result)
            }
        }
    }
}

