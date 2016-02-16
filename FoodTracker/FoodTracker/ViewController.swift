//
//  ViewController.swift
//  FoodTracker
//
//  Created by luchaoyi on 16/1/5.
//  Copyright © 2016年 luchaoyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    //MARK：Properties
    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var mealNameLabel: UILabel!

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    
//    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    //MARK:Actions
    @IBAction func selectImageFromPhotoLibrary(sender: AnyObject) {
        
    }
    
    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
    

}

