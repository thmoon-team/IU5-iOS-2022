//
//  CaptureListsTests.swift
//  LABSTests
//
//  Created by Ilya Murashko on 26.02.2022.
//

import XCTest
@testable import LABS

class CaptureListsTests: XCTestCase {
    weak var captureLists: CaptureLists? = nil
    let myFavouriteNumber = 999
    var resultValue: Int? = nil
    
    override func setUp() {
        let testingCaptureLists = CaptureLists()
        
        captureLists = testingCaptureLists
        
        testingCaptureLists.disputeWithSheldonCooper(myFavouriteNumber: myFavouriteNumber)
        
        resultValue = testingCaptureLists.favouriteNumber
    }
    
    func testReferenceCycle() {
        setUp()
        
        if let resultValue = resultValue,
           resultValue == myFavouriteNumber {
            XCTAssertTrue(true)
        } else {
            XCTFail()
        }
    }
}
