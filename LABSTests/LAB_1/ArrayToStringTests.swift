//
//  ArrayToStringTests.swift
//  LABSTests
//
//  Created by Yury Bogdanov on 20.02.2022.
//

import XCTest
@testable import LABS

final class ArrayToStringTests: XCTestCase {

    func testRegularArray() {
        let array = [1,2,3,5,7,8,9,10]
        XCTAssertEqual(ArrayToStringConverter.convertToString(array: array), "1-3,5,7-9,10")
    }
    
    func testConsecutiveArray() {
        let array = [1,2,3,4,5]
        XCTAssertEqual(ArrayToStringConverter.convertToString(array: array), "1-5")
    }
    
    func testSingleElementArray() {
        let array = [1]
        XCTAssertEqual(ArrayToStringConverter.convertToString(array: array), "1")
    }
    
    func testEmptyArray() {
        let array: [Int] = []
        XCTAssertEqual(ArrayToStringConverter.convertToString(array: array), "")
    }
}
