//
//  BooleanConverter.swift
//  LABS
//
//  Created by Ilya Murashko on 20.02.2022.
//

import Foundation

// ‼️ Все вычисления производить внутри функций ‼️

final class BooleanConverter {
    
    enum BoolValues: Equatable {
        case yes
        case no
        case veryBad(value: String)
    }
    
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
    
    static func toBoolFrom(string: String) -> BoolValues {
        switch string{
        case "YES":
            return BoolValues.yes
        case "NO":
            return BoolValues.no
        default:
            return BoolValues.veryBad(value: string)
        }
    }
}
