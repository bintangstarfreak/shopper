//
//  ViewController.swift
//  shopper
//
//  Created by Bintang Aria Ramadhan on 12/03/21.
//  Copyright © 2021 Starfreak. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTextField: CustomTextField!
    @IBOutlet weak var priceTextField: CustomTextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    @IBAction func clearButton(_ sender: Any) {
        wageTextField.text!.removeAll()
        priceTextField.text!.removeAll()
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
       
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        calculateButton.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(.white, for: .normal)
        calculateButton.addTarget(self, action: #selector(self.calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calculateButton
        priceTextField.inputAccessoryView = calculateButton
        
    }
    
    @objc func calculate() {
        if let wageTxt = wageTextField.text, let priceTxt = priceTextField.text {
            if let wage  = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(wage: wage, price: price))"
            }
        }
    }
    
    
        
}

    

