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
        var result = ""

        guard array.count > 0 else{
          return result
        }

        var firstElement = array[0]
        var count = 0

        guard array.count != 1 else {
          return String(firstElement)
        }
        for element in 1..<array.count{
          if array[element] - array[element - 1] == 1{
            count += 1
          }
          if array[element] - array[element - 1] != 1 || element == array.count-1{
          result += String(firstElement)
            if count == 0 && element == array.count-1 {
                result += "," + String(array[array.count-1])
            }
            if count > 0 {
              if element != array.count-1 {
                result += "-" + String(array[element-1])
              }
              else{
                result += "-" + String(array[element])
              }
              count = 0
              firstElement = array[element]
            }
          if element != array.count-1{
            result += ","
          }
          firstElement = array[element]
          }
        }
        return result
    }
}
