//
//  ProfViewController.swift
//  ochatto
//
//  Created by MacServer on 2015/06/08.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class ProfViewController: UIViewController {
    
    @IBAction func mail(sender: AnyObject) {

        self.tabBarController?.selectedIndex = 2
    }
    
    @IBAction func pin1_push(sender: AnyObject) {
        var url : NSURL! = NSURL(string: "http://maps.apple.com/?ll=35.664487,139.708028&q=loc:35.664487,139.708028")
        if UIApplication.sharedApplication().canOpenURL(url) {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func pin2_push(sender: AnyObject) {
        var url : NSURL! = NSURL(string: "http://maps.apple.com/?ll=35.664487,139.708028&q=loc:35.664487,139.708028")
        if UIApplication.sharedApplication().canOpenURL(url) {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBOutlet weak var follow: UIButton!
    @IBAction func follow_push(sender: AnyObject) {
        if (follow.titleLabel?.text == "フォローする") {
            follow.setTitle("フォロー済み", forState: .Normal)
        }else{
            follow.setTitle("フォローする", forState: .Normal)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "プロフィール①"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
