//
//  ViewController.swift
//  Soar_iPad
//
//  Created by Brandon Hightower on 6/26/16.
//  Copyright © 2016 Brandon Hightower. All rights reserved.
//

import UIKit
import SafariServices
import Firebase


class ViewController: UIViewController {
    
    
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    
    
    
    }


   

    @IBAction func login(sender: AnyObject) {
        /*
        if username.text == "" || password.text == "" {
         
            displayAlert.("Login Error", message: "Please enter your username and password")
        }
         
        
        }
 */

        

        //Test login code (whipplehill code here)
        FIRAuth.auth()?.signInWithEmail(username.text!, password: password.text!, completion: {
            
            user, error in
            
            if error != nil {
                
                //Incorrect add alert view
                print("incorrect login")
            
            } else {
            
                //User logged in
            
                print("user logged in")
            
            }
            
    
        
            })
        
        
        
        
        
        
    }


    @IBAction func forgotButton(sender: AnyObject) {
        
        let svc = SFSafariViewController(URL: NSURL(string: "https://pvihs.myschoolapp.com/app#login/request")!)
        self.presentViewController(svc, animated: true, completion: nil)
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

