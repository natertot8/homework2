//
//  DetailViewController.swift
//  WeekendPractice
//
//  Created by Nathan Ma on 8/17/14.
//  Copyright (c) 2014 Nathan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
   
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
    
    
    
    
//MARK: Photo Button
    
    
    @IBAction func photoButtonPressed(sender: AnyObject) {
        
        var imagePickerController = UIImagePickerController()
        
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        
        imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        
        self.presentViewController (imagePickerController, animated: true, completion: nil)
        
        
    }
    
    func imagePickerController (picker: UIImagePickerController!, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]!) {
        picker.dismissViewControllerAnimated(true, completion: nil)
        println ("user picked an image")
        
        var editedImage = info [UIImagePickerControllerEditedImage] as UIImage
        self.imageView.image = editedImage
    }
    
    func imagePickerControllerDidCancel (picker: UIImagePickerController!) {
    
    
    }
    
    
    //UIAlert stuff for the extra challenge
    //else {
    //var alert = UIAlertController(title: "Alert", message: "This ain't got no camera foo!", preferredStyle: UIAlertControllerStyle.ActionSheet)
    //alert.addAction(UIAlertAction(title:"OK", style: UIAlertActionStyle.Default, handler:nil))
    
   // }
    
    }
    
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
