//
//  home1ViewController.swift
//  ochatto
//
//  Created by MacServer on 2015/06/11.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class home1ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var myLeftButton: UIBarButtonItem!
    
    @IBAction func naviclose(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBOutlet weak var folor_button: UIButton!
    @IBAction func folorpush(sender: AnyObject) {
        if (folor_button.titleLabel?.text == "フォローする") {
            folor_button.setTitle("フォロー済み", forState: .Normal)
        }else{
            folor_button.setTitle("フォローする", forState: .Normal)
        }
    }
    
    @IBOutlet weak var tab1_left: UIImageView!
    @IBOutlet weak var tab1_center: UIImageView!
    @IBOutlet weak var tab1_right: UIImageView!
    @IBOutlet weak var tab2_left: UIImageView!
    @IBOutlet weak var tab2_center: UIImageView!
    @IBOutlet weak var tab2_right: UIImageView!
    @IBOutlet weak var tab3_left: UIImageView!
    @IBOutlet weak var tab3_center: UIImageView!
    @IBOutlet weak var tab3_right: UIImageView!
    @IBOutlet weak var tab4_left: UIImageView!
    @IBOutlet weak var tab4_center: UIImageView!
    @IBOutlet weak var tab4_right: UIImageView!
    @IBOutlet weak var tab5_left: UIImageView!
    @IBOutlet weak var tab5_center: UIImageView!
    @IBOutlet weak var tab5_right: UIImageView!
    
    @IBOutlet weak var tab1_button: UIButton!
    @IBOutlet weak var tab2_button: UIButton!
    @IBOutlet weak var tab3_button: UIButton!
    @IBOutlet weak var tab4_button: UIButton!
    @IBOutlet weak var tab5_button: UIButton!
    
    @IBOutlet weak var Nisshi_TableWakuView: UIView!
    @IBOutlet weak var Koushiki_TableWakuView: UIView!
    @IBOutlet weak var Rebuew_TableWakuView: UIView!
    @IBOutlet weak var Ochatto_TableWakuView: UIView!
    @IBOutlet weak var Mail_TableWakuView: UIView!

    @IBOutlet weak var Rebuew_TableView: UITableView!
    @IBOutlet weak var Ochatto_TableView: UITableView!
    
    @IBAction func tab1_push(sender: AnyObject) {
        tab1_left.image = UIImage(named: "tabconer-on-left.png")
        tab1_center.image = UIImage(named: "tabconer-on-center.png")
        tab1_right.image = UIImage(named: "tabconer-on-right.png")
        
        tab2_left.image = UIImage(named: "tabconer-off-left.png")
        tab2_center.image = UIImage(named: "tabconer-off-center.png")
        tab2_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab3_left.image = UIImage(named: "tabconer-off-left.png")
        tab3_center.image = UIImage(named: "tabconer-off-center.png")
        tab3_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab4_left.image = UIImage(named: "tabconer-off-left.png")
        tab4_center.image = UIImage(named: "tabconer-off-center.png")
        tab4_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab5_left.image = UIImage(named: "tabconer-off-left.png")
        tab5_center.image = UIImage(named: "tabconer-off-center.png")
        tab5_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab1_button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        tab2_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab3_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab4_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab5_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        
        Nisshi_TableWakuView.hidden = false
        Koushiki_TableWakuView.hidden = true
        Rebuew_TableWakuView.hidden = true
        Ochatto_TableWakuView.hidden = true
        Mail_TableWakuView.hidden = true
    }
    
    @IBAction func tab2_push(sender: AnyObject) {
        tab1_left.image = UIImage(named: "tabconer-off-left.png")
        tab1_center.image = UIImage(named: "tabconer-off-center.png")
        tab1_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab2_left.image = UIImage(named: "tabconer-on-left.png")
        tab2_center.image = UIImage(named: "tabconer-on-center.png")
        tab2_right.image = UIImage(named: "tabconer-on-right.png")
        
        tab3_left.image = UIImage(named: "tabconer-off-left.png")
        tab3_center.image = UIImage(named: "tabconer-off-center.png")
        tab3_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab4_left.image = UIImage(named: "tabconer-off-left.png")
        tab4_center.image = UIImage(named: "tabconer-off-center.png")
        tab4_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab5_left.image = UIImage(named: "tabconer-off-left.png")
        tab5_center.image = UIImage(named: "tabconer-off-center.png")
        tab5_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab1_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab2_button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        tab3_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab4_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab5_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        
        Nisshi_TableWakuView.hidden = true
        Koushiki_TableWakuView.hidden = false
        Rebuew_TableWakuView.hidden = true
        Ochatto_TableWakuView.hidden = true
        Mail_TableWakuView.hidden = true
    }
    
    @IBAction func tab3_push(sender: AnyObject) {
        tab1_left.image = UIImage(named: "tabconer-off-left.png")
        tab1_center.image = UIImage(named: "tabconer-off-center.png")
        tab1_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab2_left.image = UIImage(named: "tabconer-off-left.png")
        tab2_center.image = UIImage(named: "tabconer-off-center.png")
        tab2_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab3_left.image = UIImage(named: "tabconer-on-left.png")
        tab3_center.image = UIImage(named: "tabconer-on-center.png")
        tab3_right.image = UIImage(named: "tabconer-on-right.png")
        
        tab4_left.image = UIImage(named: "tabconer-off-left.png")
        tab4_center.image = UIImage(named: "tabconer-off-center.png")
        tab4_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab5_left.image = UIImage(named: "tabconer-off-left.png")
        tab5_center.image = UIImage(named: "tabconer-off-center.png")
        tab5_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab1_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab2_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab3_button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        tab4_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab5_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        
        Nisshi_TableWakuView.hidden = true
        Koushiki_TableWakuView.hidden = true
        Rebuew_TableWakuView.hidden = false
        Ochatto_TableWakuView.hidden = true
        Mail_TableWakuView.hidden = true
    }
    
    @IBAction func tab4_push(sender: AnyObject) {
        tab1_left.image = UIImage(named: "tabconer-off-left.png")
        tab1_center.image = UIImage(named: "tabconer-off-center.png")
        tab1_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab2_left.image = UIImage(named: "tabconer-off-left.png")
        tab2_center.image = UIImage(named: "tabconer-off-center.png")
        tab2_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab3_left.image = UIImage(named: "tabconer-off-left.png")
        tab3_center.image = UIImage(named: "tabconer-off-center.png")
        tab3_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab4_left.image = UIImage(named: "tabconer-on-left.png")
        tab4_center.image = UIImage(named: "tabconer-on-center.png")
        tab4_right.image = UIImage(named: "tabconer-on-right.png")
        
        tab5_left.image = UIImage(named: "tabconer-off-left.png")
        tab5_center.image = UIImage(named: "tabconer-off-center.png")
        tab5_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab1_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab2_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab3_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab4_button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        tab5_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        
        Nisshi_TableWakuView.hidden = true
        Koushiki_TableWakuView.hidden = true
        Rebuew_TableWakuView.hidden = true
        Ochatto_TableWakuView.hidden = false
        Mail_TableWakuView.hidden = true
    }
    
    @IBAction func tab5_push(sender: AnyObject) {
        tab1_left.image = UIImage(named: "tabconer-off-left.png")
        tab1_center.image = UIImage(named: "tabconer-off-center.png")
        tab1_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab2_left.image = UIImage(named: "tabconer-off-left.png")
        tab2_center.image = UIImage(named: "tabconer-off-center.png")
        tab2_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab3_left.image = UIImage(named: "tabconer-off-left.png")
        tab3_center.image = UIImage(named: "tabconer-off-center.png")
        tab3_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab4_left.image = UIImage(named: "tabconer-off-left.png")
        tab4_center.image = UIImage(named: "tabconer-off-center.png")
        tab4_right.image = UIImage(named: "tabconer-off-right.png")
        
        tab5_left.image = UIImage(named: "tabconer-on-left.png")
        tab5_center.image = UIImage(named: "tabconer-on-center.png")
        tab5_right.image = UIImage(named: "tabconer-on-right.png")
        
        tab1_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab2_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab3_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab4_button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        tab5_button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        Nisshi_TableWakuView.hidden = true
        Koushiki_TableWakuView.hidden = true
        Rebuew_TableWakuView.hidden = true
        Ochatto_TableWakuView.hidden = true
        Mail_TableWakuView.hidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "お茶っと"
        
        Rebuew_TableView.delegate = self
        Rebuew_TableView.dataSource = self
        Ochatto_TableView.delegate = self
        Ochatto_TableView.dataSource = self
        
        Nisshi_TableWakuView.hidden = true
        Koushiki_TableWakuView.hidden = true
        Rebuew_TableWakuView.hidden = false
        Ochatto_TableWakuView.hidden = true
        Mail_TableWakuView.hidden = true
        
        // 左ボタンを作成する..
        myLeftButton = UIBarButtonItem(title: "", style: .Plain, target: nil, action: "")
        // tagを設定する.
        myLeftButton.tag = 1
        // ナビゲーションバーの左に設置する.
        self.navigationItem.leftBarButtonItem = myLeftButton
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
        if (tableView == Rebuew_TableView){
            return 4
        }else if (tableView == Ochatto_TableView){
            return 6
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
        if (tableView == Rebuew_TableView){
            if(indexPath.row == 0){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab3_cell1", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 1){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab3_cell2", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 2){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab3_cell3", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 3){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab3_cell4", forIndexPath: indexPath) as! UITableViewCell
            }
        }else
        
        if (tableView == Ochatto_TableView){
            if(indexPath.row == 0){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab4_cell1", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 1){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab4_cell2", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 2){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab4_cell3", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 3){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab4_cell4", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 4){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab4_cell5", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 5){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab4_cell6", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 6){
                let cell = tableView.dequeueReusableCellWithIdentifier("tab4_cell7", forIndexPath: indexPath) as! UITableViewCell
            }
        }else{
            let cell = tableView.dequeueReusableCellWithIdentifier("", forIndexPath: indexPath) as! UITableViewCell
        }

        return cell
    }
    
}
