 //
//  Shipment.swift
//  LABS
//
//  Created by Ilya Murashko on 27.02.2022.
//

import Foundation

// На ферме урожай яблок и груш, все уже собрано и расфасовано по ящикам,
// однако, прежде чем сделать сидр фрукты нужно помыть.
// Ваша задача - проследить чтобы фрукты, следуя по конвейерной ленте,
// поочередно проходили через мойку, иначе фрукты будут забиваться в мойке и падать с конвейера.
// Общее число яблок + груш = общее число фруктов на выходе.

// Подсказка: вызов метода start исполняет замыкание обозначенное в Thread-ах

// Пример:
// на вход подаем: 200, 600
// на выходе получаем: 800

final class Shipment {
    static func fruitShipment(pearsCount: Int, applesCount: Int, completion: @escaping (Int) -> ()) {
        var resultFruitCount = 0
        
        
        let pearsThread = Thread {
            DispatchQueue.main.sync {
            for _ in 1...pearsCount {
                resultFruitCount += 1
            }
            }
        }

        let applesThread = Thread {
            DispatchQueue.main.sync {
            for _ in 1...applesCount {
                resultFruitCount += 1
            }
            }
        }

        pearsThread.start()
        applesThread.start()

        completion(resultFruitCount)
    }
}
