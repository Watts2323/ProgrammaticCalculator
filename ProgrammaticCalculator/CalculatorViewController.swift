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
        displayLabel.font = UIFont.systemFont(ofSize: 60.0)
        displayLabel.textColor = .white
        view.addSubview(displayLabel)
        displaylabelConstraints()
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
    
    func displaylabelConstraints() {
        //Lines 44 - 47 is width
        var displayLabelConstraint = NSLayoutConstraint(item: displayLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 0.0 )
        view.addConstraint(displayLabelConstraint)
        
        displayLabelConstraint = NSLayoutConstraint(item: displayLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -15)
        view.addConstraint(displayLabelConstraint)
        
        displayLabelConstraint = NSLayoutConstraint(item: displayLabel, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 250.0)
        view.addConstraint(displayLabelConstraint)
        
        displayLabelConstraint = NSLayoutConstraint(item: displayLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 175.0)
    }
}
