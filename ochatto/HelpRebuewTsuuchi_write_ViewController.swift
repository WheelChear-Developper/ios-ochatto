//
//  HelpRebuewTsuuchi_write_ViewController.swift
//  ochatto
//
//  Created by MacServer on 2015/06/21.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class HelpRebuewTsuuchi_write_ViewController: UIViewController  {
    
    private var myLeftButton: UIBarButtonItem!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var text_field: UITextView!
    
    @IBAction func naviclose(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
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
    
    @IBAction func Post_push(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
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
        
        button1.setBackgroundImage(UIImage(named: "button-on.png"), forState: .Normal)
        button2.setBackgroundImage(UIImage(named: "button-off.png"), forState: .Normal)
        button3.setBackgroundImage(UIImage(named: "button-off.png"), forState: .Normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        
        // キーボードを閉じる
        text_field.resignFirstResponder()
        
        return true
    }
    
    func textView(textView: UITextView!,
        shouldChangeTextInRange range: NSRange,
        replacementText text: String!) -> Bool{
            
            if text == "\n" {
                // キーボードを閉じる
                text_field.resignFirstResponder()
                return false
            }
            return true
    }
    
}
