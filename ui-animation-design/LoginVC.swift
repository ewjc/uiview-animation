//
//  ViewController.swift
//  ui-animation-design
//
//  Created by Eric Wong on 2/2/17.
//  Copyright © 2017 Tawpy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.setBottomBorder(borderColor: .black)
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

