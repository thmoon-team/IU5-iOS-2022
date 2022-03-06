//
//  ReferenceCycleResolverTests.swift
//  LABSTests
//
//  Created by Ilya Murashko on 25.02.2022.
//


import XCTest
@testable import LABS

class ReferenceCycleResolverTests: XCTestCase {
    
    weak var student: Student? = nil
    weak var university: University? = nil
    
    override func setUp() {
        let testStudent = Student(name: "TestStudent")
        let testUniversity = University(universityName: "TestUniversity")
        
        student = testStudent
        university = testUniversity
        
        ReferenceCycleResolver.universityAdmission(student: testStudent, to: testUniversity)
    }
    
    func testReferenceCycle() {
        setUp()
        guard
            let _ = student,
            let _ = university
        else {
            XCTAssertTrue(true)
            return
        }
        XCTFail()
    }
}
