//
//  ViewController.swift
//  Calc
//
//  Created by  Кирилл on 08.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var numberFromScreen:Double = 0;
    
    @IBOutlet weak var Result: UILabel!
    
    @IBAction func Digits(_ sender: UIButton) {
        Result.text = Result.text! + String(sender.tag)
        numberFromScreen = Double(Result.text!)!
    }
    
    
    @IBAction func Buttons(_ sender: UIButton) {
    }
    
    
    
    
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

