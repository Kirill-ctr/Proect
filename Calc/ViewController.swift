//
//  ViewController.swift
//  Calc
//
//  Created by  Кирилл on 08.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var numberFromScreen:Double = 0;
    var firstNum:Double = 0;
    var operation:Int = 0;
    var mathSign:Bool = false;
    
    @IBOutlet weak var Result: UILabel!
    
    @IBAction func Digits(_ sender: UIButton) {
        if mathSign == true {
            Result.text = String(sender.tag)
            mathSign = false
        }
        
        else{
            Result.text = Result.text! + String(sender.tag)
        }
        
        numberFromScreen = Double(Result.text!)!
    }
    
    @IBAction func Buttons(_ sender: UIButton) {
        if Result.text != "" && sender.tag != 10 && sender.tag != 15{
            firstNum = Double(Result.text!)!

            if sender.tag == 11{
                Result.text = "/"
            }
            
            else if sender.tag == 12{
                Result.text = "*"
            }
            
            else if sender.tag == 13{
                Result.text = "-"
            }
            
            else if sender.tag == 14{
                Result.text = "+"
            }
            
            operation = sender.tag
            mathSign = true
        }
        
        else if sender.tag == 15{
            if operation == 11{
                Result.text = String(firstNum / numberFromScreen)
            }
            
           else if operation == 12{
                Result.text = String(firstNum * numberFromScreen)
            }
            
            else if operation == 13{
                 Result.text = String(firstNum - numberFromScreen)
             }
            
            else if operation == 14{
                 Result.text = String(firstNum + numberFromScreen)
             }
        }
        
        else if sender.tag == 10{
            Result.text = ""
            firstNum = 0
            numberFromScreen = 0
            operation = 0
        }
    }
    
    
    
    
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

