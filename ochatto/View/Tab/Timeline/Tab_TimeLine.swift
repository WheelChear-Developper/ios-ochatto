//
//  Tab_TimeLine.swift
//  ochatto
//
//  Created by MacServer on 2015/06/08.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class Tab_TimeLine: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var Private_TableWakuView: UIView!
    @IBOutlet weak var Social_TableWakuView: UIView!
    
    @IBOutlet weak var Private_TableView: UITableView!
    @IBOutlet weak var Social_TableView: UITableView!
    
    @IBAction func Private_push(sender: AnyObject) {

        self.navigationItem.title = "MyTimeline - Private"
        Private_TableWakuView.hidden = false
        Social_TableWakuView.hidden = true
    }
    
    @IBAction func Social_push(sender: AnyObject) {
        
        self.navigationItem.title = "MyTimeline - Social"
        Private_TableWakuView.hidden = true
        Social_TableWakuView.hidden = false
    }
    
    @IBAction func NewDiary_private_push(sender: AnyObject) {
        
        self.tabBarController?.selectedIndex = 6
    }
    
    @IBAction func NewDiary_social_push(sender: AnyObject) {
        
        self.tabBarController?.selectedIndex = 6
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "MyTimeline - Private"
        
        Private_TableView.delegate = self
        Private_TableView.dataSource = self
        Social_TableView.delegate = self
        Social_TableView.dataSource = self
        
        Private_TableWakuView.hidden = false
        Social_TableWakuView.hidden = true
        
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
        if (tableView == Private_TableView){
            return 4
        }else if (tableView == Social_TableView){
            return 5
        }else{
            return 0
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        var ret :CGFloat = 0
        if (tableView == Private_TableView){
            
            switch indexPath.row {
            case 0:
                ret = 120
            case 1:
                ret = 120
            case 2:
                ret = 250
            case 3:
                ret = 40
            default:
                ret = 0
                break
            }
            
        }else if (tableView == Social_TableView){
            
            switch indexPath.row {
            case 0:
                ret = 120
            case 1:
                ret = 120
            case 2:
                ret = 120
            case 3:
                ret = 120
            case 4:
                ret = 40
            default:
                ret = 0
                break
            }
        }else{
            return 0
        }
        return ret
    }
    
    /*
    Cellに値を設定するデータソースメソッド.
    (実装必須)
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell-damy", forIndexPath: indexPath) as! UITableViewCell
        if (tableView == Private_TableView){
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
                let cell = tableView.dequeueReusableCellWithIdentifier("cell-new", forIndexPath: indexPath) as! UITableViewCell
            }
            
        }else
            
            if (tableView == Social_TableView){
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
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell-new", forIndexPath: indexPath) as! UITableViewCell
                }
                
            }else{
                let cell = tableView.dequeueReusableCellWithIdentifier("", forIndexPath: indexPath) as! UITableViewCell
        }
        
        return cell
    }
    
}
