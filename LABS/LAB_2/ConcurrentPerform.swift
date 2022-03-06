//
//  ConcurrentPerform.swift
//  LABS
//
//  Created by Ilya Murashko on 26.02.2022.
//

import Foundation

// На вход подается целое число N.
// Необходимо заполнить массив целыми числами по порядку 1,2,3,4,5…N, с использованием
// DispatchQueue.concurrentPerform(iterations: count, execute: { index in }).

// Пример:
// на вход подаем: 10
// на выходе получаем: 1,2,3,4,5,6,7,8,9,10


final class ConcurrentPerform {
    
    static func createArray(count: Int, completion: @escaping ([Int]) -> ()) {
        var array = [Int]()
        let Lock=NSLock()
        array.append(contentsOf: repeatElement(1, count: count))
        DispatchQueue.concurrentPerform(iterations: count, execute: { index in
            Lock.lock()
            array[index]=index+1
            Lock.unlock()
        })
        completion(array)
    }
}
 
