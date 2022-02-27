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
        
        if (array.count == 0){
            return ""
        }
        
        var result : String = ""
        var startVal : Int = array[0]
        
        for i in 1..<array.count{
            if(abs(array[i-1] - array[i]) <= 1){
                continue
            } else {                                                                                                                         
                if(startVal == array[i-1]){
                    result.append("\(startVal)")
                } else {
                    result.append("\(startVal)-\(array[i-1])")
                }
                if(array[i-1] != array[array.count-1])
                {
                    result.append(",")
                }
                startVal = array[i]
            }
        }
        if(startVal == array[array.count-1]){  //проверка последнего элемента массива
            result.append("\(startVal)")
        } else {
            result.append("\(startVal)-\(array[array.count-1])")
        }
        return result
    }
}
