//
//  Calculator.swift
//  String Calculator Kata
//
//  Created by Alexandre Freire García on 17/4/17.
//  Copyright © 2017 Alexandre Freire García. All rights reserved.
//

import Foundation

enum CalculatorError: Error {
    case negativeValue
}

final class Calculator {
    
    func add(numbers: String) throws -> Int {
        guard numbers.characters.count != 0 else { return 0 }
        let delimeters = CharacterSet([",", "\n", detectCustomDelimiter(nums: numbers)])
        let array = numbers.components(separatedBy: delimeters).flatMap{ Int($0) }.filter{ $0 <= 1000 }
        
        if thereAreNegativeValues(in: array) { throw CalculatorError.negativeValue }
        
        return array.reduce(0, +)
        
    }
    
    private func detectCustomDelimiter(nums: String) -> UnicodeScalar {
        guard let match = nums.range(of: "(?<=//)[^\n]+", options: .regularExpression) else {
            return UnicodeScalar("x")!
        }
        return UnicodeScalar(nums.substring(with: match))!
        
    }
    
    private func thereAreNegativeValues(in array: [Int]) -> Bool {
        return (array.filter{ $0 < 0 }).count > 0
    }
}
