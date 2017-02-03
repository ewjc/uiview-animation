//
//  ViewController.swift
//  ui-animation-design
//
//  Created by Eric Wong on 2/2/17.
//  Copyright © 2017 Tawpy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var textField: UITextField!
    
    func changeTextField() {
        let border = CALayer()
        let width = UITextField.layerClass.formatWidth
        border.backgroundColor = UIColor.black.cgColor
        border.borderWidth = 2.0
        border.masksToBounds = true
        border.m
        
        
        
        
    }
    

}

