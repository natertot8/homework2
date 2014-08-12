//
//  ViewController.swift
//  Homework2Fix
//
//  Created by Nathan Ma on 8/9/14.
//  Copyright (c) 2014 Nathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var rosterList = [Person] ()
    
    var studentFirst = ["Nate", "Matthew", "Jeff", "John", "Chrstie", "David", "Adrian", "Jake", "Brad", "Shams", "Cameron", "Kori", "Parker", "Nathan", "Casey", "Brendan", "Brian", "Mark", "Rowan", "Kevin", "Will", "Heather", "Tuan", "Zack", "Sara", "Hongyao"]
    var studentLast = ["Birkholz", "Brightbill", "Chavez", "Clem", "Ferderer", "Fry", "Gherle", "Hawken", "Johnson", "Kazi", "Klein", "Kolodziejczak", "Lewis", "Ma", "MacPhee", "McAleer", "Mendez", "Morris", "North", "Pham", "Richman", "Thueringer", "Vu", "Walkingstick", "Wong", "Zhang"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.rosterList = initializeRoster(studentFirst, nameList: studentLast)
        
        for var i = 0; i < rosterList.count; i++ {
            println(rosterList[i].fullName())
        }
    }
    
    func initializeRoster (nameFirst: [String], nameList: [String]) -> [Person] {
        var roster = [Person] ()
        

        
        for var i = 0; i < nameFirst.count; i++ {
            roster.append(Person(firstName: (studentFirst[i]), lastName: (studentLast[i])))
        }
        return (roster)
    }
    
    
    @IBAction func didClick (sender: UIButton) {
    }
        // Do any additional setup after loading the view, typically from a nib.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

