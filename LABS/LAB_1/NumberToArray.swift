//
//  NumberToArray.swift
//  LABS
//
//  Created by Ilya Murashko on 20.02.2022.
//

import Foundation

// ‼️ Все вычисления производить внутри функций ‼️

final class NumberToArray {
    
    // Функция получает на вход целое число N
    // и возвращает массив целых чисел из которого состоит число N.
    // Если N меньше 0, то функция должна вернуть массив отрицательных чисел.
    // Если N = 0, то функция должна вернуть пустой массив.
    // Пример:
    // на вход подаем: 10345702
    // на выходе получаем: [1,0,3,4,5,7,0,2]
    // ================================
    // на вход подаем: -99432
    // на выходе получаем: [-9, -9, -4, -3, -2]
    // ================================
    // на вход подаем: 0
    // на выходе получаем: []
    
    static func createArrayBy(number: Int) -> [Int] {
        var newArray = [Int]()
        var changeableNumber = number
          while changeableNumber != 0{
            newArray.append(changeableNumber % 10)
            changeableNumber = changeableNumber/10
          }
        return newArray.reversed()
    }
}
