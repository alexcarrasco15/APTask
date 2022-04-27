//
//  ViewController.swift
//  game thing
//
//  Created by Alex Carrasco on 4/6/22.
//  Copyright © 2022 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftSquare: UIImageView!
    
    @IBOutlet weak var middleSquare: UIImageView!
    
    @IBOutlet weak var rightSquare: UIImageView!
    
    var blue = CGFloat(0)
    
    var state = "none"
    
    var history = [String]()
    
    func resetTints (){
        leftSquare.tintColor = .blue
        middleSquare.tintColor = .blue
        rightSquare.tintColor = .blue
    }
 
    @IBOutlet weak var slider1: UISlider!
    
    @IBAction func slider(_ sender: Any) {
        
        resetTints()
            
        blue = CGFloat(slider1.value)
        if slider1.value < 1 {
            leftSquare.tintColor = .green
            state = "left"
        } else if slider1.value < 2 {
            middleSquare.tintColor = .green
            state = "middle"
        } else if slider1.value <= 3 {
            rightSquare.tintColor = .green
            state = "right"
        }
      
    }
    @IBOutlet weak var colorView: UIView!
    
    @IBAction func `switch`(_ sender: UISwitch) {
        
    }
    
    @IBAction func confirm(_ sender: UIButton) {
        history.append(state)
        print(history)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

