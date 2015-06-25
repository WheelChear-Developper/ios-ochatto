//
//  GroupeMake_Setting.swift
//  ochatto
//
//  Created by MacServer on 2015/06/23.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class GroupeMake_Setting: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var myLeftButton: UIBarButtonItem!
    
    @IBOutlet weak var GropeMake_TableView: UITableView!
    
    @IBAction func naviclose(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var andor1_button: UIButton!
    @IBAction func andor1_push(sender: AnyObject) {
        if(andor1_button.titleLabel == "ＡＮＤ") {
            andor1_button.setTitle("ＯＲ", forState: .Normal)
        }else{
            andor1_button.setTitle("ＡＮＤ", forState: .Normal)
        }
    }
    
    @IBOutlet weak var andor2_button: UIButton!
    @IBAction func andor2_push(sender: AnyObject) {
        if(andor2_button.titleLabel == "ＡＮＤ") {
            andor2_button.setTitle("ＯＲ", forState: .Normal)
        }else{
            andor2_button.setTitle("ＡＮＤ", forState: .Normal)
        }
    }
    
    @IBOutlet weak var andor3_button: UIButton!
    @IBAction func andor3_push(sender: AnyObject) {
        if(andor3_button.titleLabel == "ＡＮＤ") {
            andor3_button.setTitle("ＯＲ", forState: .Normal)
        }else{
            andor3_button.setTitle("ＡＮＤ", forState: .Normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GropeMake_TableView.delegate = self
        GropeMake_TableView.dataSource = self
        
        self.navigationItem.title = "グループ作成通知設定"
        
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
        return 6
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 26
    }
    
    /*
    Cellに値を設定するデータソースメソッド.
    (実装必須)
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell-head", forIndexPath: indexPath) as! UITableViewCell
        if (tableView == GropeMake_TableView){
            if(indexPath.row == 0){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell-head", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 1){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 2){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 3){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell3", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 4){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell4", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 5){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell5", forIndexPath: indexPath) as! UITableViewCell
            }
            
        }else{
            let cell = tableView.dequeueReusableCellWithIdentifier("", forIndexPath: indexPath) as! UITableViewCell
        }
        
        return cell
    }
    
}
