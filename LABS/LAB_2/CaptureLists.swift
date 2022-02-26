//
//  CaptureLists.swift
//  LABS
//
//  Created by Ilya Murashko on 26.02.2022.
//

import Foundation

// Вы пытаетесь переспорить с Шелдона, чье любимое число круче.
// Сейчас, какое бы число вы не загадали, Шелдон вас переспорит.
// Ваша задача - внимательно посмотреть на код и грамотно модернизировать замыкание setValueInFavouriteNumber.

// Решение кратко обоснуйте в блоке | Обоснование решения |.
// Например: /* Я сделал …, т.к. это красиво */

/* | Обоснование решения | */


final class CaptureLists {
    
    var favouriteNumber = 0
    
    func disputeWithSheldonCooper(myFavouriteNumber: Int) {
        var number = myFavouriteNumber
        
        let setValueInFavouriteNumber: () -> () = {
            self.favouriteNumber = number
        }
        
        let convertToSheldonsFavoriteNumberIfNeeded: () -> () = {
            guard number == 73 else {
                number = 73
                return
            }
        }
        
        convertToSheldonsFavoriteNumberIfNeeded()
        setValueInFavouriteNumber()
    }
}
