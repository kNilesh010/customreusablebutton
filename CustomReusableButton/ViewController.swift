//
//  ViewController.swift
//  CustomReusableButton
//
//  Created by Nilesh Kumar on 05/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    let simpleReusableButton = SimpleReusableButton(frame: CGRect(x: 0, y: 0, width: 350, height: 50))
   

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(simpleReusableButton)
        let anotherReusableButton = AnotherReusableButton(frame: CGRect(x: (view.frame.size.width - 350) / 2, y: 100, width: 350, height: 50))
        view.addSubview(anotherReusableButton)
        
        simpleReusableButton.center = view.center
        simpleReusableButton.config(with: ButtonModel(primaryText: "Click to subscribe", secondaryText: "Rs. 100 will be charged per month"))
        
        anotherReusableButton.config(with: AnotherButtonModel(primaryText: "Hi.. I am a button", textImage: UIImage(systemName: "cart"), backgroundColor: .blue))
    }


}

