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

        let loginFrame = CGRect(x: 0, y: 0 , width: 280 , height: 50)
        let loginBoxView = UIView(frame: loginFrame)
        loginBoxView.backgroundColor = UIColor.clear
        loginBoxView.layer.borderColor = UIColor.black.cgColor
        loginBoxView.layer.borderWidth = 3
        self.view.addSubview(loginBoxView)
        loginBoxView.center = CGPoint(x: 205, y: 600)
        loginBoxView.layer.cornerRadius = 25
        
        UIView.animate(withDuration: 0.7, delay: 1, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [], animations: {
            loginBoxView.frame = loginBoxView.frame.insetBy(dx: 115, dy: 0)
        }, completion: nil)
        
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

