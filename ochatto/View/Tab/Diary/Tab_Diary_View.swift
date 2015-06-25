//
//  Tab_Diary_View.swift
//  ochatto
//
//  Created by MacServer on 2015/06/11.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class Tab_Diary_View: UIViewController {
    
    @IBAction func delete_push(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "確認", message: "本当に削除しますか？", preferredStyle: .Alert)
        let otherAction = UIAlertAction(title: "キャンセル", style: .Default) {
            action in println("pushed OK!")
        }
        let cancelAction = UIAlertAction(title: "OK", style: .Cancel) {
            action in println("Pushed CANCEL!")
        }
        
        alertController.addAction(otherAction)
        alertController.addAction(cancelAction)
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "日記の作成"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

