//
//  SquareSumTests.swift
//  LABSTests
//
//  Created by Ilya Murashko on 20.02.2022.
//

import XCTest
@testable import LABS

final class SquareSumTests: XCTestCase {

    func testWithRegularArray() {
        let array = [1, 2, 2]
        XCTAssertEqual(SquareSum.squareSumFor(arrayOfNumber: array), 9)
    }
    
    func testWithEmptyArray() {
        let array = [Int]()
        XCTAssertEqual(SquareSum.squareSumFor(arrayOfNumber: array), 0)
    }
    
    func testWithZeroOneElementArray () {
        let array = [0]
        XCTAssertEqual(SquareSum.squareSumFor(arrayOfNumber: array), 0)
    }
    
    func testWithZeroMultiElementArray() {
        let array = [0, 0, 0, 0, 0, 0]
        XCTAssertEqual(SquareSum.squareSumFor(arrayOfNumber: array), 0)
    }
    
    func testWithUnitMultiElementArray() {
        let array = [1, 1, 1, 1, 1, 1]
        XCTAssertEqual(SquareSum.squareSumFor(arrayOfNumber: array), 6)
    }
    
    func testWithNegativeArray() {
        let array = [-1, -2, -2]
        XCTAssertEqual(SquareSum.squareSumFor(arrayOfNumber: array), 9)
    }
}
