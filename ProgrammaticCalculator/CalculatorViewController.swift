//
//  CalculatiorViewController.swift
//  ProgrammaticCalculator
//
//  Created by Xavier on 11/12/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .cyan
        displayLabel.textAlignment = .right
        displayLabel.text = "0"
        displayLabel.font = UIFont.systemFont(ofSize: 50.0)
        displayLabel.textColor = .white
        view.addSubview(displayLabel)
    }
    
    
    var isInTheMiddleOfTyping = false
    var calculator = Calculator()
    
    var displayLabel = UILabel()
    var displayNumberValue: Float {
        get {
            let text = displayLabel.text ?? "0"
            return (text as NSString).floatValue
        }
        set{
            displayLabel.text = "\(newValue)"
            isInTheMiddleOfTyping = false
        }
    }
    
    func setupButtons() {
    
    }
}
