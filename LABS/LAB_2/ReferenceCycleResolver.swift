//
//  ReferenceCycleResolver.swift
//  LABS
//
//  Created by Ilya Murashko on 25.02.2022.
//

import Foundation

// В реализации классов Student и University есть ошибка, приводящая к утечке памяти, найдите ее и исправьте.

// Решение кратко обоснуйте в блоке | Обоснование решения |.
// Например: /* Я сделал …, т.к. это красиво */

/* | так как объекты держут друг друга сильными ссылками их счетчик ссылок не опускается до 0, следовательно не уничтожаются,  для исправления данной проблемы надо 1-ому из объектов прописать слабую ссылку.| */

final class Student {
    let name: String
    
    weak var university: University?
    
    init(name: String) {
        self.name = name
    }
}



final class University {
    let universityName: String
    
    var student: Student?
    
    init(universityName: String) {
        self.universityName = universityName
    }
}

final class ReferenceCycleResolver {
    static func universityAdmission(student: Student, to university: University) {
        student.university = university
        university.student = student
    }
}

