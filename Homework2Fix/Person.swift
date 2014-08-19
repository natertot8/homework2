//
//  Person.swift
//  WeekendPractice
//
//  Created by Nathan Ma on 8/17/14.
//  Copyright (c) 2014 Nathan. All rights reserved.
//

import UIKit

class Person {
    
    var firstName : String
    var lastName : String
    var image : UIImage?
    
    init (fName : String, lName : String) {
        self.firstName = fName
        self.lastName = lName
    }
    
    func fullName() -> String {
        return firstName + " " + lastName
    }
    
}
