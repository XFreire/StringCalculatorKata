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
    
    func testMultiplyEmptyString() {
        XCTAssertEqual(0, calculator.add(numbers: ""))
    }
    
    func testMultiplyOneNumber() {
        XCTAssertEqual(1, calculator.add(numbers: "1"))
    }
}
