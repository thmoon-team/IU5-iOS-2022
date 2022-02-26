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

/* | Обоснование решения | */

final class Student {
    let name: String
    init(name: String) {
        self.name = name
    }
    var university: University?
}



final class University {
    let universityName: String
    init(universityName: String) {
        self.universityName = universityName
    }
    var student: Student?
}

final class ReferenceCycleResolver {
    static func universityAdmission(student: Student, to university: University) {
        student.university = university
        university.student = student
    }
}

