//
//  Calculator.swift
//  String Calculator Kata
//
//  Created by Alexandre Freire García on 17/4/17.
//  Copyright © 2017 Alexandre Freire García. All rights reserved.
//

import Foundation

final class Calculator {
    
    func add(numbers: String) -> Int {
        guard numbers.characters.count != 0 else { return 0 }
        let array = numbers.components(separatedBy: ",").flatMap{ Int($0) }
        
        return array.reduce(0, +)
        
    }
}
