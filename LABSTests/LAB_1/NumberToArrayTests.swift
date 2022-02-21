//
//  NumberToArrayTests.swift
//  LABSTests
//
//  Created by Ilya Murashko on 20.02.2022.
//

import XCTest
@testable import LABS

final class NumberToArrayTests: XCTestCase {

    func testWithRegularNumber() {
        let number = 10345702
        XCTAssertEqual(NumberToArray.createArrayBy(number: number), [1,0,3,4,5,7,0,2])
    }
    
    func testWithNegativeNumber() {
        let number = -99432
        XCTAssertEqual(NumberToArray.createArrayBy(number: number), [-9, -9, -4, -3, -2])
    }
    
    func testWithSingleDigitNumber () {
        let number = 1
        XCTAssertEqual(NumberToArray.createArrayBy(number: number), [1])
    }
    
    func testWithZeroNumber() {
        let number = 0
        XCTAssertEqual(NumberToArray.createArrayBy(number: number), [])
    }
}
