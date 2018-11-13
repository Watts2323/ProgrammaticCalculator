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
    
    //This will remove the last Object from the array
    func pop() ->Float? {
        return floatNumbers.removeLast()
    }
    
    //This will add the float to the array
    func push(number: Float){
        floatNumbers.append(number)
    }
    
    func printOut() {
        print(floatNumbers)
    }
    
    // This will return the count of the array.
    func count() -> Int {
        return floatNumbers.count
    }
}
