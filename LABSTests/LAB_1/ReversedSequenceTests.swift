//
//  ReversedSequenceTests.swift
//  LABSTests
//
//  Created by Ilya Murashko on 14.02.2022.
//

import XCTest
@testable import LABS

class ReversedSequenceTests: XCTestCase {
    
    func testCreateSequenceFromZeroTo() {
        XCTAssertEqual([1,2,3,4,5], SequenceСreator.createSequenceFromZeroTo(finalElement: 5))
    }
    
    func testCreateSequenceFromZeroToWhenGetNegativeValue() {
        XCTAssertEqual([], SequenceСreator.createSequenceFromZeroTo(finalElement: -1))
    }
    
    func testCreateSequenceFromZeroToWhenGetZeroValue() {
        XCTAssertEqual([], SequenceСreator.createSequenceFromZeroTo(finalElement: 0))
    }
    
    func testCreateReversedSequenceToZeroFrom() {
        XCTAssertEqual([5,4,3,2,1], SequenceСreator.createReversedSequenceToZeroFrom(finalElement: 5))
    }
    
    func testCreateReversedSequenceToZeroFromWhenGetNegativeValue() {
        XCTAssertEqual([], SequenceСreator.createReversedSequenceToZeroFrom(finalElement: -1))
    }
    
    func testCreateReversedSequenceToZeroFromWhenGetZeroValue() {
        XCTAssertEqual([], SequenceСreator.createReversedSequenceToZeroFrom(finalElement: 0))
    }
}
