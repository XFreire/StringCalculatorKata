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
        XCTAssertEqual(0, calculator.add(numbers: ""))
    }
    
    func testAddOneNumber() {
        XCTAssertEqual(1, calculator.add(numbers: "1"))
    }
    
    func testAddTwoNumbers() {
        XCTAssertEqual(4, calculator.add(numbers: "1,3"))
    }
    
    func testAddUnknownAmountOfNumbers() {
        XCTAssertEqual(15, calculator.add(numbers: "1,3,2,6,3"))
    }
    
    func testAddNewLineDelimiter() {
        XCTAssertEqual(4, calculator.add(numbers: "1\n3"))
        XCTAssertEqual(12, calculator.add(numbers: "1,3,2\n6"))
    }
    
    func testAddWithCustomDelimiter() {
        XCTAssertEqual(3, calculator.add(numbers: "//;\n1;2"))
        XCTAssertEqual(6, calculator.add(numbers: "//;\n1;2,3"))
        XCTAssertEqual(7, calculator.add(numbers: "//;\n1;2,3\n1"))
        
    }
}
