//
//  ConcurrentPerformTests.swift
//  LABSTests
//
//  Created by Ilya Murashko on 26.02.2022.
//

import XCTest
@testable import LABS

class ConcurrentPerformTests: XCTestCase {
    func test() {
        var resultArray = [Int]()
        let expectation = XCTestExpectation(description: "ConcurrentPerformTests")
        
        let checkArray = Array<Int>(1...100)
        
        ConcurrentPerform.createArray(count: 100) { array in
            resultArray = array
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
        XCTAssertEqual(resultArray, checkArray)
    }
    
    func test_1() {
        var resultArray = [Int]()
        let expectation = XCTestExpectation(description: "ConcurrentPerformTests")
        
        let checkArray = Array<Int>(1...1000)
        
        ConcurrentPerform.createArray(count: 1000) { array in
            resultArray = array
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
        XCTAssertEqual(resultArray, checkArray)
    }
}

