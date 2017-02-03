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
        setBottomBorder(textField: textField, borderColor: .black)
    }
    
    @IBOutlet weak var textField: UITextField!

    func setBottomBorder(textField: UITextField, borderColor: UIColor) {
        self.textField.borderStyle = .none
        self.textField.backgroundColor = UIColor.clear
        let width: CGFloat = 1.0
        
        let borderFrame = CGRect(x: 0.00, y: self.textField.frame.height - width, width: self.textField.frame.width, height: width)
        let borderLine = UIView(frame: borderFrame)
        borderLine.backgroundColor = borderColor
        
    }
    

}

