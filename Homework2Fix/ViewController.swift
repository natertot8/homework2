//
//  ViewController.swift
//  WeekendPractice
//
//  Created by Nathan Ma on 8/17/14.
//  Copyright (c) 2014 Nathan. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var people = [Person]()
    
    var teacher = [Person]()
    
    
    
    //MARK:View methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializePeople()
        initializeTeacher()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tableView.reloadData()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: Functions
    
    func initializePeople() {
        self.people.append(Person(fName: "Nate", lName: "Birkholz"))
        self.people.append(Person(fName: "Matthew", lName: "Brightbill"))
        self.people.append(Person(fName: "Kristin", lName: "Ferderer"))
        self.people.append(Person(fName: "David", lName: "Fry"))
        self.people.append(Person(fName: "Adrian", lName: "Gherle"))
        self.people.append(Person(fName: "Jake", lName: "Hawken"))
        self.people.append(Person(fName: "Shams", lName: "Kazi"))
        self.people.append(Person(fName: "Cameron", lName: "Klein"))
        self.people.append(Person(fName: "Kori", lName: "Kolodziejczak"))
        self.people.append(Person(fName: "Parker", lName: "Lewis"))
        self.people.append(Person(fName: "Nathan", lName: "Ma"))
        self.people.append(Person(fName: "Casey", lName: "MacPhee"))
        self.people.append(Person(fName: "Brendan", lName: "McAleer"))
        self.people.append(Person(fName: "Mark", lName: "Morris"))
        self.people.append(Person(fName: "Rowan", lName: "North"))
        self.people.append(Person(fName: "Kevin", lName: "Pham"))
        self.people.append(Person(fName: "Will", lName: "Richman"))
        self.people.append(Person(fName: "Heather", lName: "Thueringer"))
        self.people.append(Person(fName: "Tuan", lName: "Vu"))
        self.people.append(Person(fName: "Zack", lName: "Walkingstick"))
        self.people.append(Person(fName: "Sara", lName: "Wong"))
        self.people.append(Person(fName: "Hongyao", lName: "Zhang"))
        
        
    
    }
    
    func initializeTeacher() {
        self.teacher.append(Person(fName: "John", lName: "Clem"))
        self.teacher.append(Person(fName: "Brad", lName: "Johnson"))
        
        
    }
    
    
    //MARK: Segue
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        let indexPath = self.tableView.indexPathForSelectedRow()
        
        if segue.identifier == "Push" {
            
            if tableView.indexPathForSelectedRow().section == 0 {
                
                var person = self.people [tableView.indexPathForSelectedRow().row]
                
                let studentSegue = segue.destinationViewController as DetailViewController
                
                studentSegue.person = person
            }
            
            else {
                var person = self.teacher [tableView.indexPathForSelectedRow().row]
                
                let instructorSegue = segue.destinationViewController as DetailViewController
                
                instructorSegue.person = person
            }
            
            //var destination = segue.destinationViewController as DetailViewController
            //destination.person = people[indexPath.row]
            
            //self.tableView.deselectRowAtIndexPath(indexPath, animated: false)
        }
    }
    
    
    
    //MARK: UITableViewDataSource
    
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
        
        return self.people.count
            
        }
        else {
            
            return self.teacher.count
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 2
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        if indexPath.section == 0 {
            
            var studentRow = self.people[indexPath.row]
            
            cell.textLabel.text = studentRow.fullName()
        }
        else {
            var teacherRow = self.teacher[indexPath.row]
            
            cell.textLabel.text = teacherRow.fullName()
        }
        
        return cell
}
    
    func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String! {
        if section == 0 {
            return "Students"
        }
        else {
            return "Instructors"
        }
    }


}