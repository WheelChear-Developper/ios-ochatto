//
//  HelpMake_ViewController.swift
//  ochatto
//
//  Created by MacServer on 2015/06/21.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class HelpMake_ViewController: UIViewController  {
    
    @IBAction func naviclose(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func post_action(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func delete_push(sender: AnyObject) {
        let alertController = UIAlertController(title: "本当に削除しますか？", message: "", preferredStyle: .Alert)
        let otherAction = UIAlertAction(title: "OK", style: .Default) {
            action in println("pushed OK!")
            
            self.navigationController?.popViewControllerAnimated(true)
        }
        let cancelAction = UIAlertAction(title: "CANCEL", style: .Cancel) {
            action in println("Pushed CANCEL!")
        }
        
        alertController.addAction(otherAction)
        alertController.addAction(cancelAction)
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Help Me!編集"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}