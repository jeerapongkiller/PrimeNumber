//
//  ViewController.swift
//  Prime
//
//  Created by PKRU02 on 7/27/2560 BE.
//  Copyright © 2560 MasterTema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Impeicit
    let strAlerHaveSpace = "Please Fill Number"
    let strAlerArtical = "This is Artical Please Fill Number Only"
    let strAlertNotPrime = " Not Prime"
    let strAlertBePrime = " is Prime"
    
    

    
    
    
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    @IBAction func checkButton(_ sender: Any) {
        
        let strNumberFromTextFeild = numberTextField.text!
        print("Number ==> \(strNumberFromTextFeild)")
        
        //Check Space
        if strNumberFromTextFeild != ""{
            
            print("No Space")
            
            //Check Number or Artical
            if let intNumberFromTextFeild = Int(strNumberFromTextFeild) {
                print("This is Number")
                
                //Check Prime
                if intNumberFromTextFeild != 1 {
                    // Not 1
                    
                var intMyNumber = 2
                var bolPrime:Bool = true
                    
                    while intMyNumber < intNumberFromTextFeild {
                        
                        if intNumberFromTextFeild % intMyNumber == 0 {
                            bolPrime = false
                        }
                        
                        intMyNumber += 1
                    }   //This While
                    
                    if bolPrime {
                        resultLable.text = "\(intNumberFromTextFeild)" + strAlertBePrime
                    }else{
                    
                        resultLable.text = "\(intNumberFromTextFeild)" + strAlertNotPrime
                    
                    }
                    
                    
                }else{
                
                    resultLable.text = "\(intNumberFromTextFeild)" + strAlertNotPrime
                    
                }
                
                
            }else{
            
                print("This Arical")
                resultLable.text = strAlerArtical
            
            }
            
        }else{
            resultLable.text = strAlerHaveSpace
            print("Have Space")
            
        }// If1
        
    }   //Check Button
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

