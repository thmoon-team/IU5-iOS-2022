//
//  SwapValues.swift
//  LABS
//
//  Created by Ilya Murashko on 20.02.2022.
//

import Foundation

// ‼️ Все вычисления производить внутри функций ‼️

final class SwapValues {
    
    // MARK: Internal data structures
    
    class EmployeePayroll: Equatable {
        
        // MARK: Internal
        
        static func == (lhs: EmployeePayroll, rhs: EmployeePayroll) -> Bool {
            lhs.puppaSalary == rhs.puppaSalary && lhs.luppaSalary == rhs.luppaSalary
        }
        
        // MARK: Internal properties
        
        var luppaSalary: Int
        var puppaSalary: Int
        
        // MARK: Lifecycle
        
        init(newLuppaSalary: Int, newPuppaSalary: Int) {
            luppaSalary = newLuppaSalary
            puppaSalary = newPuppaSalary
        }
        
        init(luppaSalary: Int, puppaSalary: Int) {
            self.luppaSalary = luppaSalary
            self.puppaSalary = puppaSalary
        }
    }
    
    // Функция получает на вход зарплатную ведомость EmployeePayroll, но стажер бухгалтер все напутал,
    // и теперь сотрудники получат зарплату друг друга. Твоя задача, поменять местами зарплаты сотрудников, чтобы все были довольны.
    
    // Пример:
    // на вход подаем: EmployeePayroll(luppaSalary: 50, puppaSalary: 100)
    // на выходе получаем: EmployeePayroll(luppaSalary: 100, puppaSalary: 50)
    
    // MARK: Internal

    static func swap(employeePayroll: EmployeePayroll) -> EmployeePayroll {
        employeePayroll.luppaSalary += employeePayroll.puppaSalary
        employeePayroll.puppaSalary = employeePayroll.luppaSalary - employeePayroll.puppaSalary
        employeePayroll.luppaSalary = employeePayroll.luppaSalary - employeePayroll.puppaSalary
        return employeePayroll
    }
}
