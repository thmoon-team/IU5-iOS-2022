//
//  BooleanConverterTests.swift
//  LABSTests
//
//  Created by Ilya Murashko on 20.02.2022.
//

// Функция получает на вход строку "YES" или "NO", или другую строку 😈,
// и возвращает одно из значений enum-а BoolValues.
// Пример:
// на вход подаем: "YES"
// на выходе получаем: BoolValues.yes
// ================================
// на вход подаем: "NO"
// на выходе получаем: BoolValues.no
// ================================
// на вход подаем: "LOVE ANDROID"
// на выходе получаем: BoolValues.veryBad(value: "LOVE ANDROID")

import XCTest
@testable import LABS

final class BooleanConverterTests: XCTestCase {

    func testWithYESString() {
        let string = "YES"
        XCTAssertEqual(BooleanConverter.toBoolFrom(string: string), BooleanConverter.BoolValues.yes)
    }
    
    func testWithNOString() {
        let string = "NO"
        XCTAssertEqual(BooleanConverter.toBoolFrom(string: string), BooleanConverter.BoolValues.no)
    }
    
    func testWithWrongString() {
        let string = "TEST"
        let result = BooleanConverter.BoolValues.veryBad(value: string)
        XCTAssertEqual(BooleanConverter.toBoolFrom(string: string), result)
    }
}
