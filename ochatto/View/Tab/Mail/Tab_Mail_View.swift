//
//  Tab_Mail_View.swift
//  ochatto
//
//  Created by MacServer on 2015/06/08.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class Tab_Mail_View: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    //Configクラス定義
    var config_cls:NSObject.Type = NSClassFromString("Configuration") as! NSObject.Type
    
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
    
    @IBAction func mailSend_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "Mail_Send_View", bundle: NSBundle.mainBundle())
        var SetViewController: Mail_Send_View = storyboard.instantiateInitialViewController() as! Mail_Send_View
        
        self.navigationController?.pushViewController(SetViewController, animated: true)
    }
    
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
    
    override func viewWillAppear(animated: Bool) {
//        super.viewDidDisappear(animated)
        println("HomeViewControllerのviewWillAppearが呼ばれた")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        //Config用のクラス設定
        var config:Configuration = (config_cls() as! Configuration)
        if config.getMailType() == 1 {
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
            config.setMailType(0)
        }else{
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
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "News"
        
        Oshirase_TableView.delegate = self
        Oshirase_TableView.dataSource = self
        Mail_TableView.delegate = self
        Mail_TableView.dataSource = self
        
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
