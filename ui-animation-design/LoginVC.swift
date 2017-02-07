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
        textField.setBottomBorder(borderColor: .black)
        textField.delegate = self

        let originX = self.view.frame.width / 2
        let originY = self.view.frame.height / 0.5
        let loginFrame = CGRect(x: 0, y: 0 , width: 150 , height: 50)
        let loginBoxView = UIView(frame: loginFrame)
        loginBoxView.backgroundColor = UIColor.clear
        loginBoxView.layer.borderColor = UIColor.black.cgColor
        loginBoxView.layer.borderWidth = 3
        self.view.addSubview(loginBoxView)
        loginBoxView.center = CGPoint(x: originX, y: originY)
    
        
    }
    
    @IBOutlet weak var textField: UITextField!
    

}

extension UITextField {
    
    func setBottomBorder(borderColor: UIColor) {
        self.borderStyle = .none
        self.backgroundColor = UIColor.clear
        self.placeholder = "Enter text here"
        let width: CGFloat = 2.0
        
        let borderFrame = CGRect(x: 0, y: self.frame.height - width, width: self.frame.width, height: width)
        let borderLine = UIView(frame: borderFrame)
        self.addSubview(borderLine)
        borderLine.backgroundColor = borderColor
    }
    
    
    
}

