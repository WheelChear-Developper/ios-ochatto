//
//  GroupeMake.swift
//  ochatto
//
//  Created by MacServer on 2015/06/22.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class GroupeMake: UIViewController {
    
    private var myLeftButton: UIBarButtonItem!
    
    @IBAction func naviclose(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func newGroupe_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "GroupeMake_Setting", bundle: NSBundle.mainBundle())
        var groupeMake: GroupeMake_Setting = storyboard.instantiateInitialViewController() as! GroupeMake_Setting
        
        self.navigationController?.pushViewController(groupeMake, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "グループ作成 - リストの作成"
        
        // 左ボタンを作成する..
        myLeftButton = UIBarButtonItem(title: "", style: .Plain, target: nil, action: "")
        // tagを設定する.
        myLeftButton.tag = 1
        // ナビゲーションバーの左に設置する.
        self.navigationItem.leftBarButtonItem = myLeftButton
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
