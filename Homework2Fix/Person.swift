//
//  Person.swift
//  Homework2Fix
//
//  Created by Nathan Ma on 8/9/14.
//  Copyright (c) 2014 Nathan. All rights reserved.
//

import Foundation
import UIKit

class Person {
    var firstName : String
    var lastName : String
    
    var image : UIImage?
    
    
    init(firstName : String, lastName : String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String {
        return firstName + " " + lastName
    }
}