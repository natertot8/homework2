//
//  ViewController.swift
//  Homework2Fix
//
//  Created by Nathan Ma on 8/9/14.
//  Copyright (c) 2014 Nathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var people = [Person]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.createPeople()
        println(self.people.count)
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createPeople() {
        
        var nate = Person (firstName: "Nate", lastName: "Birkholz")
        var matthew = Person (firstName: "Matthew", lastName: "Brightbill")
        var jeff = Person (firstName: "Jeff", lastName: "Clem")
        var chrstie = Person (firstName: "Chrstie", lastName: "Ferderer")
        var david = Person (firstName: "David", lastName: "Fry")
        var adrian = Person (firstName: "Adrian", lastName: "Gherle")
        var jake = Person (firstName: "Jake", lastName: "Hawken")
        var brad = Person (firstName: "Brad", lastName: "Johnson")
        var shams = Person (firstName: "Shams", lastName: "Kazi")
        var cameron = Person (firstName: "Cameron", lastName: "Klein")
        var kori = Person (firstName: "Kori", lastName: "Kolodziejczak")
        var parker = Person (firstName: "Parker", lastName: "Lewis")
        var nathan = Person (firstName: "Nathan", lastName: "Ma")
        var casey = Person (firstName: "Casey", lastName: "MacPhee")
        var brendan = Person (firstName: "Brendan", lastName: "McAleer")
        var mark = Person (firstName: "Mark", lastName: "Morris")
        var rowan = Person (firstName: "Rowan", lastName: "North")
        var kevin = Person (firstName: "Kevin", lastName: "Pham")
        var will = Person (firstName: "Will", lastName: "Richman")
        var heather = Person (firstName: "Heather", lastName: "Thueringer")
        var tuan = Person (firstName: "Tuan", lastName: "Vu")
        var zack = Person (firstName: "Zack", lastName: "Walkingstick")
        var sara = Person (firstName: "Sara", lastName: "Wong")
        var hongyao = Person (firstName: "Hongyao", lastName: "Zhang")
        
        self.people.append(nate)
        self.people.append(matthew)
        self.people.append(jeff)
        self.people.append(chrstie)
        self.people.append(david)
        self.people.append(adrian)
        self.people.append(jake)
        self.people.append(brad)
        self.people.append(shams)
        self.people.append(cameron)
        self.people.append(kori)
        self.people.append(parker)
        self.people.append(nathan)
        self.people.append(casey)
        self.people.append(brendan)
        self.people.append(mark)
        self.people.append(rowan)
        self.people.append(kevin)
        self.people.append(will)
        self.people.append(heather)
        self.people.append(tuan)
        self.people.append(zack)
        self.people.append(sara)
        self.people.append(hongyao)
        
    
        
    }
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        
        return self.people.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        //get my cell
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        //configure it for the row let personForRow = people[indexPath.row]
        
        let singlePerson = self.people[indexPath.row]
        cell.textLabel.text = singlePerson.fullName()
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        println(indexPath.row)
    }


}

