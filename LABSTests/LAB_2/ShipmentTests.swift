//
//  ShipmentTests.swift
//  LABSTests
//
//  Created by Ilya Murashko on 27.02.2022.
//

import XCTest
@testable import LABS

class ShipmentTests: XCTestCase {
    
    func test() {
        let pearsCount = 4000
        let applesCount = 8000
        let expectation = XCTestExpectation(description: "ShipmentTests")
        
        var resultFruits = 0
        
        Shipment.fruitShipment(pearsCount: pearsCount, applesCount: applesCount) { result in
            resultFruits = result
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
        XCTAssertEqual(resultFruits, pearsCount + applesCount)
    }
}
