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
       
        var bufNum : Int = number
        var Array : [Int] = []
        var sign : Int = 1
        var count : Int = 1
        
        if(bufNum < 0){
            sign = -1
            bufNum = sign * bufNum
        }
        
        while (bufNum > 9){
            bufNum = bufNum / 10
            count = count*10
        }
        
        bufNum  = sign * number
        
        while (bufNum > 0)
        {
            Array.append(sign*(bufNum / count))
            bufNum = bufNum % count
            count = count / 10
        }
        
        return Array
    }
}
