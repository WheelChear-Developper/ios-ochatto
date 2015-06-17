//
//  TimeLineViewController.swift
//  ochatto
//
//  Created by MacServer on 2015/06/08.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class TimeLineViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "MyTimeline - Private"
        
//        Private_TableView.delegate = self
//        Private_TableView.dataSource = self
//        Social_TableView.delegate = self
//        Social_TableView.dataSource = self
        
//        Private_TableWakuView.hidden = false
//        Social_TableWakuView.hidden = true
        
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
            return 0
        }else if (tableView == Social_TableView){
            return 0
        }else{
            return 0
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if (tableView == Private_TableView){
            return 70
        }else if (tableView == Social_TableView){
            return 70
        }else{
            return 0
        }
    }
    
    /*
    Cellに値を設定するデータソースメソッド.
    (実装必須)
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("damy_cell", forIndexPath: indexPath) as! UITableViewCell
        if (tableView == Private_TableView){
            if(indexPath.row == 0){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab1_cell1", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 1){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab1_cell2", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 2){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab1_cell3", forIndexPath: indexPath) as! UITableViewCell
            }
            
        }else
            
            if (tableView == Social_TableView){
                if(indexPath.row == 0){
                    let cell = tableView.dequeueReusableCellWithIdentifier("tab2_cell1", forIndexPath: indexPath) as! UITableViewCell
                }
                
                if(indexPath.row == 1){
                    let cell = tableView.dequeueReusableCellWithIdentifier("tab2_cell2", forIndexPath: indexPath) as! UITableViewCell
                }
                
                if(indexPath.row == 2){
                    let cell = tableView.dequeueReusableCellWithIdentifier("tab2_cell3", forIndexPath: indexPath) as! UITableViewCell
                }
                
                if(indexPath.row == 3){
                    let cell = tableView.dequeueReusableCellWithIdentifier("tab2_cell3", forIndexPath: indexPath) as! UITableViewCell
                }
                
            }else{
                let cell = tableView.dequeueReusableCellWithIdentifier("", forIndexPath: indexPath) as! UITableViewCell
        }
        
        return cell
    }
    
}
