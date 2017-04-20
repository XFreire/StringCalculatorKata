//
//  String_Calculator_KataTests.swift
//  String Calculator KataTests
//
//  Created by Alexandre Freire García on 17/4/17.
//  Copyright © 2017 Alexandre Freire García. All rights reserved.
//

import XCTest

@testable import String_Calculator_Kata

class String_Calculator_KataTests: XCTestCase {
    let calculator = Calculator()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAddEmptyString() {
        XCTAssertEqual(0, try! calculator.add(numbers: ""))
    }
    
    func testAddOneNumber() {
        XCTAssertEqual(1, try! calculator.add(numbers: "1"))
    }
    
    func testAddTwoNumbers() {
        XCTAssertEqual(4, try! calculator.add(numbers: "1,3"))
    }
    
    func testAddUnknownAmountOfNumbers() {
        XCTAssertEqual(15, try! calculator.add(numbers: "1,3,2,6,3"))
    }
    
    func testAddNewLineDelimiter() {
        XCTAssertEqual(4, try! calculator.add(numbers: "1\n3"))
        XCTAssertEqual(12, try! calculator.add(numbers: "1,3,2\n6"))
    }
    
    func testAddWithCustomDelimiter() {
        XCTAssertEqual(3, try! calculator.add(numbers: "//;\n1;2"))
        XCTAssertEqual(6, try! calculator.add(numbers: "//;\n1;2,3"))
        XCTAssertEqual(7, try! calculator.add(numbers: "//;\n1;2,3\n1"))
    }
    
    func testAddWithNegativeValuesThrowsException() {
        XCTAssertThrowsError(try calculator.add(numbers: "1,-5")) { error in
            XCTAssertEqual(error as? CalculatorError, CalculatorError.negativeValue)
        }
    }
    
}
