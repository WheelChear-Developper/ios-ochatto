//
//  HelpRebuewTsuuchi_ViewController.swift
//  ochatto
//
//  Created by MacServer on 2015/06/21.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class HelpRebuewTsuuchi_ViewController: UIViewController  {
    
    @IBAction func naviclose(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Ochatto"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
