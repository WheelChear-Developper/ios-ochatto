//
//  Tab_Prof_View.swift
//  ochatto
//
//  Created by MacServer on 2015/06/08.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class Tab_Prof_View: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var Kyoumi1_TableView: UITableView!
    @IBOutlet weak var Kyoumi2_TableView: UITableView!
    @IBOutlet weak var Donnahito_TableView: UITableView!
    @IBOutlet weak var Ochatto_TableView: UITableView!
    
    @IBOutlet weak var Kyoumi_TableWakuView: UIView!
    @IBOutlet weak var Donnahito_TableWakuView: UIView!
    @IBOutlet weak var Ochatto_TableWakuView: UIView!
    
    @IBAction func acountSet_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "AcountViewController", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("AcountSetRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func mail(sender: AnyObject) {
        self.tabBarController?.selectedIndex = 2
    }
    
    @IBAction func pin1_push(sender: AnyObject) {
        var url : NSURL! = NSURL(string: "http://maps.apple.com/?ll=35.664487,139.708028&q=loc:35.664487,139.708028")
        if UIApplication.sharedApplication().canOpenURL(url) {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func pin2_push(sender: AnyObject) {
        var url : NSURL! = NSURL(string: "http://maps.apple.com/?ll=35.664487,139.708028&q=loc:35.664487,139.708028")
        if UIApplication.sharedApplication().canOpenURL(url) {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBOutlet weak var follow: UIButton!
    @IBAction func follow_push(sender: AnyObject) {
        if (follow.titleLabel?.text == "フォローする") {
            follow.setTitle("フォロー済み", forState: .Normal)
        }else{
            follow.setTitle("フォローする", forState: .Normal)
        }
    }
    
    @IBAction func privateFashon_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "Privat_Fashon", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("Privat_FashonRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func tab1_push(sender: AnyObject) {
        
        Kyoumi_TableWakuView.hidden = false
        Donnahito_TableWakuView.hidden = true
        Ochatto_TableWakuView.hidden = true
    }
    
    @IBAction func tab2_push(sender: AnyObject) {
        
        Kyoumi_TableWakuView.hidden = true
        Donnahito_TableWakuView.hidden = false
        Ochatto_TableWakuView.hidden = true
    }
    
    @IBAction func tab3_push(sender: AnyObject) {
        
        Kyoumi_TableWakuView.hidden = true
        Donnahito_TableWakuView.hidden = true
        Ochatto_TableWakuView.hidden = false
    }
    
    @IBAction func rebuew_delete(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "確認", message: "", preferredStyle: .ActionSheet)
        let deleteAction = UIAlertAction(title: "削除", style: .Default) {
            action in println("削除")
        }
        let eraseAction = UIAlertAction(title: "隠す", style: .Default) {
            action in println("隠す")
        }
        let setAction = UIAlertAction(title: "公開するグループ・個人を選択", style: .Default) {
            action in println("公開設定")
            
            var storyboard: UIStoryboard = UIStoryboard(name: "RebuewKoukaiSet_View", bundle: NSBundle.mainBundle())
            var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("RebuewKoukaiSet_ViewRoot") as! UINavigationController
            
            self.navigationController?.pushViewController(navigation, animated: true)
        }
        let cancelAction = UIAlertAction(title: "CANCEL", style: .Cancel) {
            action in println("CANCEL")
        }
        
        alertController.addAction(deleteAction)
        alertController.addAction(eraseAction)
        alertController.addAction(setAction)
        alertController.addAction(cancelAction)
        
        //For ipad And Univarsal Device
        alertController.popoverPresentationController?.sourceView = sender as! UIView;
        alertController.popoverPresentationController?.sourceRect = CGRect(x: (sender.frame.width/2), y: sender.frame.height, width: 0, height: 0)
        alertController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.Up
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Kyoumi1_TableView.delegate = self
        Kyoumi1_TableView.dataSource = self
        Kyoumi2_TableView.delegate = self
        Kyoumi2_TableView.dataSource = self
        
        Donnahito_TableView.delegate = self
        Donnahito_TableView.dataSource = self
        
        Ochatto_TableView.delegate = self
        Ochatto_TableView.dataSource = self
        
        self.navigationItem.title = "なつこさんのプロフィール"
        
        Kyoumi_TableWakuView.hidden = false
        Donnahito_TableWakuView.hidden = true
        Ochatto_TableWakuView.hidden = true
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
        if (tableView == Kyoumi1_TableView){
            return 7
        }else if (tableView == Kyoumi2_TableView){
            return 7
        }else if (tableView == Donnahito_TableView){
            return 2
        }else if (tableView == Ochatto_TableView){
            return 4
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
        if (tableView == Kyoumi1_TableView){
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
            
            if(indexPath.row == 6){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell6", forIndexPath: indexPath) as! UITableViewCell
            }
        }else
            if (tableView == Kyoumi2_TableView){
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
                
                if(indexPath.row == 6){
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell6", forIndexPath: indexPath) as! UITableViewCell
                }
                
        }else
            if (tableView == Donnahito_TableView){
                if(indexPath.row == 0){
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! UITableViewCell
                }
                    
                if(indexPath.row == 1){
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath) as! UITableViewCell
                }
                    
            }else
                if (tableView == Ochatto_TableView){
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
                            
                }else{
                    let cell = tableView.dequeueReusableCellWithIdentifier("", forIndexPath: indexPath) as! UITableViewCell
        }
        return cell
    }
}
