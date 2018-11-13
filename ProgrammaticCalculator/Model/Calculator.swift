//
//  Calculator.swift
//  ProgrammaticCalculator
//
//  Created by Xavier on 11/12/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import Foundation

class Calculator {
    var floatNumbers = [Float]()
    
    func pop() ->Float? {
        return floatNumbers.removeLast()
    }
    
    func push(number: Float){
        floatNumbers.append(number)
    }
    
    func printOut() {
        print(floatNumbers)
    }
    
    func count() -> Int {
        return floatNumbers.count
    }
}
