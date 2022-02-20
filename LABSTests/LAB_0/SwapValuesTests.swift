//
//  SwapValuesTests.swift
//  LABSTests
//
//  Created by Ilya Murashko on 20.02.2022.
//

import XCTest
@testable import LABS

class SwapValuesTests: XCTestCase {
    func testSwap() {
        let employeePayroll = SwapValues.EmployeePayroll(luppaSalary: 50, puppaSalary: 100)
        let employeePayrollResult = SwapValues.EmployeePayroll(luppaSalary: 100, puppaSalary: 50)
        XCTAssertEqual(employeePayrollResult, SwapValues.swap(employeePayroll: employeePayroll))
    }
}
