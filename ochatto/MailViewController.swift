//
//  MailViewController.swift
//  ochatto
//
//  Created by MacServer on 2015/06/08.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class MailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var tab1_left: UIImageView!
    @IBOutlet weak var tab1_center: UIImageView!
    @IBOutlet weak var tab1_right: UIImageView!
    @IBOutlet weak var tab2_left: UIImageView!
    @IBOutlet weak var tab2_center: UIImageView!
    @IBOutlet weak var tab2_right: UIImageView!
    
    @IBOutlet weak var tab1_button: UIButton!
    @IBOutlet weak var tab2_button: UIButton!
    
    @IBOutlet weak var Oshirase_TableWakuView: UIView!
    @IBOutlet weak var Mail_TableWakuView: UIView!
    
    @IBOutlet weak var Oshirase_TableView: UITableView!
    @IBOutlet weak var Mail_TableView: UITableView!
    
    @IBAction func tab1_push(sender: AnyObject) {
        tab1_left.image = UIImage(named: "tabconer-on-left.png")
        tab1_center.image = UIImage(named: "tabconer-on-center.png")
        tab1_right.image = UIImage(named: "tabconer-on-right.png")
        
        tab2_left.image = UIImage(named: "tabconer-off-left.png")
        tab2_center.image = UIImage(named: "tabconer-off-center.png")
        tab2_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab1_button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        tab2_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        
        Oshirase_TableWakuView.hidden = false
        Mail_TableWakuView.hidden = true
    }
    
    @IBAction func tab2_push(sender: AnyObject) {
        tab1_left.image = UIImage(named: "tabconer-off-left.png")
        tab1_center.image = UIImage(named: "tabconer-off-center.png")
        tab1_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab2_left.image = UIImage(named: "tabconer-on-left.png")
        tab2_center.image = UIImage(named: "tabconer-on-center.png")
        tab2_right.image = UIImage(named: "tabconer-on-right.png")
        
        tab1_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab2_button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        Oshirase_TableWakuView.hidden = true
        Mail_TableWakuView.hidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "News"
        
        Oshirase_TableView.delegate = self
        Oshirase_TableView.dataSource = self
        Mail_TableView.delegate = self
        Mail_TableView.dataSource = self
        
        Oshirase_TableWakuView.hidden = false
        Mail_TableWakuView.hidden = true
        
//        self.Mail_TableView.estimatedRowHeight = 70
//        self.Mail_TableView.rowHeight = UITableViewAutomaticDimension
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
        if (tableView == Oshirase_TableView){
            return 4
        }else if (tableView == Mail_TableView){
            return 3
        }else{
            return 0
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if (tableView == Oshirase_TableView){
            return 70
        }else if (tableView == Mail_TableView){
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
        if (tableView == Oshirase_TableView){
            if(indexPath.row == 0){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab1_cell1", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 1){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab1_cell2", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 2){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab1_cell3", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 3){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab1_cell4", forIndexPath: indexPath) as! UITableViewCell
            }
        }else
            
            if (tableView == Mail_TableView){
                if(indexPath.row == 0){
                    let cell = tableView.dequeueReusableCellWithIdentifier("tab2_cell1", forIndexPath: indexPath) as! UITableViewCell
                }
                
                if(indexPath.row == 1){
                    let cell = tableView.dequeueReusableCellWithIdentifier("tab2_cell2", forIndexPath: indexPath) as! UITableViewCell
                }
                
                if(indexPath.row == 2){
                    let cell = tableView.dequeueReusableCellWithIdentifier("tab2_cell3", forIndexPath: indexPath) as! UITableViewCell
                }
                
            }else{
                let cell = tableView.dequeueReusableCellWithIdentifier("", forIndexPath: indexPath) as! UITableViewCell
        }
        
        return cell
    }

}
