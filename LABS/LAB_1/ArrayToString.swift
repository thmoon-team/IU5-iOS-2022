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
        guard !array.isEmpty else {
                     return ""
                 }
                 guard array.count > 1 else {
                     return "\(array[0])"
                         }

                         var str = ""
                         var first = 1
                         var numElement = 0

        for i in 1..<array.count{
                 if(array[i] - array[i - 1] == 1){
                     numElement += 1
                 }

                 if(i == array.count-1 || array[i] - array[i - 1] != 1){
                     str += "\(first)"
                    
                   if( i == array.count-1 && numElement == 0){
                       str += ",\(array[array.count-1])"
                   }
                    
                   if(numElement > 0){
                     if(i != array.count-1){
                       str += "-\(array[i-1])"
                     }
                     else{
                       str += "-\(array[i])"
                     }
                     numElement = 0
                     first = array[i]
                   }
                 if(i < array.count-1){
                   str += ","
                 }
                 first = array[i]
                 }
               }

        return str

    }}
