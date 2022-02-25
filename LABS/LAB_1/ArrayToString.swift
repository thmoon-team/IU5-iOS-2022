//
//  ArrayToString.swift
//  LABS
//
//  Created by Yury Bogdanov on 20.02.2022.
//

import Foundation

// ‼️ Все вычисления производить внутри функций ‼️

final class ArrayToStringConverter {
    
    // Функция получает на вход отсортированный массив, например [1,2,3,5,6,7,9,10,15]
    // Необходимо вернуть строку, сворачивая рядом стоящие элементы в блоки вида 1-3. Если элементов подряд нет, то элемент просто добавляется в строку.
    // Гарантируется, что:
    //  - в массиве нет отрицательных чисел
    //
    // Если в массиве нет элементов, то вернуть пустую строку ""
    // Пример:
    // на вход подаем: [1,2,3,5,6,7,9,10,15]
    // на выходе получаем: "1-3,5-7,9-10,15"
    // ================================
    // на вход подаем: [1,2,3,4,5,10,14,15,16,17,20]
    // на выходе получаем: "1-5,10,14-17,20"
    
    static func convertToString(array: [Int]) -> String {
        var string: String = ""
        var isEnum: Bool = false
        for i in 0..<array.count {
            if i != array.count - 1 {
                if array[i+1] == array[i] + 1 && isEnum == false {
                    string = string + String(array[i]) + "-"
                    isEnum = true
                }
                else if array[i+1] == array[i] + 1 && isEnum == true {
                    continue
                }
                else if array[i+1] != array[i] + 1 && isEnum == true {
                    string = string + String(array[i]) + ","
                    isEnum = false
                }
                else {
                    string = string + String(array[i]) + ","
                }
            }
            else {
                string = string + String(array[i])
            }
        }
        print(string)
        return string
    }
}
