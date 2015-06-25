//
//  Mail_Send_View.swift
//  ochatto
//
//  Created by MacServer on 2015/06/24.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class Mail_Send_View: UIViewController  {
    
    private var myLeftButton: UIBarButtonItem!
    
    @IBOutlet weak var text_field: UITextView!
    
    @IBAction func naviclose(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func Post_push(sender: AnyObject) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 左ボタンを作成する..
        myLeftButton = UIBarButtonItem(title: "", style: .Plain, target: nil, action: "")
        // tagを設定する.
        myLeftButton.tag = 1
        // ナビゲーションバーの左に設置する.
        self.navigationItem.leftBarButtonItem = myLeftButton
        
        self.navigationItem.title = "メール"
        
        text_field.becomeFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        

        
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

