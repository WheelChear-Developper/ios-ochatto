//
//  HelpRebuewWrite.swift
//  ochatto
//
//  Created by MacServer on 2015/06/21.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class HelpRebuewWrite: UIViewController  {
    
    private var myLeftButton: UIBarButtonItem!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBAction func naviclose(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func face_1(sender: AnyObject) {
        button1.setBackgroundImage(UIImage(named: "button-on.png"), forState: .Normal)
        button2.setBackgroundImage(UIImage(named: "button-off.png"), forState: .Normal)
        button3.setBackgroundImage(UIImage(named: "button-off.png"), forState: .Normal)
    }
    
    @IBAction func face_2(sender: AnyObject) {
        button1.setBackgroundImage(UIImage(named: "button-off.png"), forState: .Normal)
        button2.setBackgroundImage(UIImage(named: "button-on.png"), forState: .Normal)
        button3.setBackgroundImage(UIImage(named: "button-off.png"), forState: .Normal)
    }
    
    @IBAction func face_3(sender: AnyObject) {
        button1.setBackgroundImage(UIImage(named: "button-off.png"), forState: .Normal)
        button2.setBackgroundImage(UIImage(named: "button-off.png"), forState: .Normal)
        button3.setBackgroundImage(UIImage(named: "button-on.png"), forState: .Normal)
    }
    
    @IBAction func HelpMake_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "HelpRebuewWrite_write_View", bundle: NSBundle.mainBundle())
        var groupeMake: HelpRebuewWrite_write_View = storyboard.instantiateInitialViewController() as! HelpRebuewWrite_write_View
        
        self.navigationController?.pushViewController(groupeMake, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 左ボタンを作成する..
        myLeftButton = UIBarButtonItem(title: "", style: .Plain, target: nil, action: "")
        // tagを設定する.
        myLeftButton.tag = 1
        // ナビゲーションバーの左に設置する.
        self.navigationItem.leftBarButtonItem = myLeftButton
        
        self.navigationItem.title = "レビューを書く"
        
        button1.setBackgroundImage(UIImage(named: "button-off.png"), forState: .Normal)
        button2.setBackgroundImage(UIImage(named: "button-off.png"), forState: .Normal)
        button3.setBackgroundImage(UIImage(named: "button-off.png"), forState: .Normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

