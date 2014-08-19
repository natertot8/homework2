//
//  DetailViewController.swift
//  WeekendPractice
//
//  Created by Nathan Ma on 8/17/14.
//  Copyright (c) 2014 Nathan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
   
    @IBOutlet weak var textfirstName: UITextField!
    
    
    @IBOutlet weak var textlastName: UITextField!
    
    
    
    var person : Person!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.textfirstName.text = self.person.firstName
        self.textlastName.text = self.person.lastName
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.person.firstName = self.textfirstName.text
        self.person.lastName = self.textlastName.text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}