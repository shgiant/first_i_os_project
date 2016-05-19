//
//  ViewController.swift
//  PushTest
//
//  Created by MF839-011 on 2016. 5. 18..
//  Copyright © 2016년 MF839-011. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var switchVal : Bool = false
    

    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func unwindToViewContoroller ( segue : UIStoryboardSegue){
        
    }
    
    @IBAction func onSwitch(sender: AnyObject) {
        let updateSwitch = sender as! UISwitch
        
        if updateSwitch.on == true {
            switchVal = true
        }else{
            switchVal = false
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let svc = segue.destinationViewController as? SecondViewController {
            svc.textFieldVal = myTextField.text!
            svc.switchVal = switchVal
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(method(_:)), name: "HELLO", object: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func method (notification:NSNotification){
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

