//
//  Classes.swift
//  Lead Collection
//
//  Created by Valentin Condrea on 17/05/2019.
//  Copyright © 2019 Trainer. All rights reserved.
//

import Foundation


class Student {
    // scop nume: Tip = Valoare
    var age: Int?
    var gender: String?
    
    // CONSTRUCTOR OR INITIALIZER
    init(age: Int?) {
        self.age = age
        }
    //METHOD
    func test(){
        print ("student test")
    }
    
}

class HighSchoolStudent: Student {
    var highSchool: String = "Liviu Rebreanu"
    var teacher: String?
    
    //OVERRIDING CONSTRUCTOR to not request arguments
    init() {
        super.init(age: nil)
    }
    
    // OVERRIDING SUPER METHOD
    override func test() {
        print("student test")
    }
}


// FUNCTION
func test () {
   
    let student: Student = Student (age: 21)
    student.age = 22
    
    let studentHighSchool: HighSchoolStudent = HighSchoolStudent ()
    studentHighSchool.teacher = "jack"
    
}

