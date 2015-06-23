//
//  Status_View.swift
//  ochatto
//
//  Created by MacServer on 2015/06/15.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class Status_View: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var myLeftButton: UIBarButtonItem!
    
    @IBOutlet weak var Level_TableWakuView: UIView!
    @IBOutlet weak var Icon_TableWakuView: UIView!
    @IBOutlet weak var Comment_TableWakuView: UIView!
    
    @IBOutlet weak var Level_TableView: UITableView!
    @IBOutlet weak var Icon_TableView: UITableView!
    @IBOutlet weak var Comment_TableView: UITableView!
    
    @IBAction func naviclose(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func newGroupe_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "GroupeMake", bundle: NSBundle.mainBundle())
        //        var groupeMake: GroupeMake = storyboard.instantiateInitialViewController() as! GroupeMake
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("GroupeMakeRoot") as! UINavigationController
        
        //        self.navigationController?.pushViewController(navigation, animated: true)
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func tab1_push(sender: AnyObject) {
        
        Level_TableWakuView.hidden = false
        Icon_TableWakuView.hidden = true
        Comment_TableWakuView.hidden = true
    }
    
    @IBAction func tab2_push(sender: AnyObject) {
        
        Level_TableWakuView.hidden = true
        Icon_TableWakuView.hidden = false
        Comment_TableWakuView.hidden = true
    }
    
    @IBAction func tab3_push(sender: AnyObject) {
        
        Level_TableWakuView.hidden = true
        Icon_TableWakuView.hidden = true
        Comment_TableWakuView.hidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Level_TableView.delegate = self
        Level_TableView.dataSource = self
        
        Icon_TableView.delegate = self
        Icon_TableView.dataSource = self
        
        Comment_TableView.delegate = self
        Comment_TableView.dataSource = self
        
        self.navigationItem.title = "会社の仲間 - ステータス"
        
        // 左ボタンを作成する..
        myLeftButton = UIBarButtonItem(title: "", style: .Plain, target: nil, action: "")
        // tagを設定する.
        myLeftButton.tag = 1
        // ナビゲーションバーの左に設置する.
        self.navigationItem.leftBarButtonItem = myLeftButton
        
        Level_TableWakuView.hidden = false
        Icon_TableWakuView.hidden = true
        Comment_TableWakuView.hidden = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    Cellが選択された際に呼び出されるデリゲートメソッド.
    */
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Num: \(indexPath.row)")
        
    }
    
    /*
    Cellの総数を返すデータソースメソッド.
    (実装必須)
    */
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tableView == Level_TableView){
            return 5
        }else if (tableView == Icon_TableView){
            return 5
        }else if (tableView == Comment_TableView){
            return 5
        }else{
            return 0
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if (tableView == Level_TableView){
            return 26
        }else if (tableView == Icon_TableView){
            return 80
        }else if (tableView == Comment_TableView){
            return 60
        }else{
            return 0
        }
    }
    
    /*
    Cellに値を設定するデータソースメソッド.
    (実装必須)
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell-head", forIndexPath: indexPath) as! UITableViewCell
        if (tableView == Level_TableView){
            if(indexPath.row == 0){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 1){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 2){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell3", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 3){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell4", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 4){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell5", forIndexPath: indexPath) as! UITableViewCell
            }
        }else
            if (tableView == Icon_TableView){
                if(indexPath.row == 0){
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! UITableViewCell
                }
                
                if(indexPath.row == 1){
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath) as! UITableViewCell
                }
                
                if(indexPath.row == 2){
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell3", forIndexPath: indexPath) as! UITableViewCell
                }
                
                if(indexPath.row == 3){
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell4", forIndexPath: indexPath) as! UITableViewCell
                }
                
                if(indexPath.row == 4){
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell5", forIndexPath: indexPath) as! UITableViewCell
                }
            }else
                if (tableView == Comment_TableView){
                    if(indexPath.row == 0){
                        let cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! UITableViewCell
                    }
                    
                    if(indexPath.row == 1){
                        let cell = tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath) as! UITableViewCell
                    }
                    
                    if(indexPath.row == 2){
                        let cell = tableView.dequeueReusableCellWithIdentifier("cell3", forIndexPath: indexPath) as! UITableViewCell
                    }
                    
                    if(indexPath.row == 3){
                        let cell = tableView.dequeueReusableCellWithIdentifier("cell4", forIndexPath: indexPath) as! UITableViewCell
                    }
                    
                    if(indexPath.row == 4){
                        let cell = tableView.dequeueReusableCellWithIdentifier("cell5", forIndexPath: indexPath) as! UITableViewCell
                    }
        
        }else{
            let cell = tableView.dequeueReusableCellWithIdentifier("", forIndexPath: indexPath) as! UITableViewCell
        }
        
        return cell
    }
    
}
    
