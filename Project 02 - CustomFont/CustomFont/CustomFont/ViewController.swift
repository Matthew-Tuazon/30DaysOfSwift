//
//  ViewController.swift
//  CustomFont
//
//  Created by Mac Os on 7/17/18.
//  Copyright © 2018 Matt Tuazon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeFontButton: UIButton!
    @IBOutlet weak var textViewText: UITextView!
    
    var fontNames = ["GreatVibes-Regular","Montserrat-BoldItalic","OpenSans-Italic","Raleway-ExtraLight","Roboto-Medium"]
    var fontRowIndex = 0
    var sizeRandomizer = [15, 20, 25, 30, 35]
    var sizeRandomizerIndex = 0
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func ChangeFont(_ sender: Any) {
        fontRowIndex = (fontRowIndex + 1) % 5
        sizeRandomizerIndex = (sizeRandomizerIndex + 1) % 5
        print(fontNames[fontRowIndex])
        print(sizeRandomizer[sizeRandomizerIndex])
        textViewText.font = UIFont (name: fontNames[fontRowIndex], size: CGFloat(sizeRandomizer[sizeRandomizerIndex]))
    }
    
    
}

