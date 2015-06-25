//
//  Setting_View.swift
//  ochatto
//
//  Created by MacServer on 2015/06/25.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class Setting_View: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    private var myLeftButton: UIBarButtonItem!
    @IBOutlet weak var TableView: UITableView!
    
    @IBAction func close_push(sender: AnyObject) {
        //self.navigationController?.popViewControllerAnimated(true)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func profile_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "Profile", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("ProfileRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func acount_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "AcountViewController", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("AcountSetRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func kyouyu_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "kyouyuSetting", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("kyouyuSettingRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 左ボタンを作成する..
        myLeftButton = UIBarButtonItem(title: "", style: .Plain, target: nil, action: "")
        // tagを設定する.
        myLeftButton.tag = 1
        // ナビゲーションバーの左に設置する.
        self.navigationItem.leftBarButtonItem = myLeftButton
        
        self.navigationItem.title = "設定"
        
        TableView.delegate = self
        TableView.dataSource = self
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
        return 3
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }
    
    /*
    Cellに値を設定するデータソースメソッド.
    (実装必須)
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell-damy", forIndexPath: indexPath) as! UITableViewCell
        if(indexPath.row == 0){
            let cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! UITableViewCell
        }
        
        if(indexPath.row == 1){
            let cell = tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath) as! UITableViewCell
        }
        
        if(indexPath.row == 2){
            let cell = tableView.dequeueReusableCellWithIdentifier("cell3", forIndexPath: indexPath) as! UITableViewCell
        }
        
        return cell
    }
    
}
