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
        guard count > 0 else {
            return
        }
        
        let lock = NSLock()
        var array = [Int](repeating: 0, count: count)
        
        DispatchQueue.concurrentPerform(iterations: count, execute: { index in
            lock.lock()
            array[index] = index + 1
            lock.unlock()
        })
        completion(array)
    }
}

