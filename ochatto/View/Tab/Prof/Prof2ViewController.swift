//
//  Prof2ViewController.swift
//  ochatto
//
//  Created by MacServer on 2015/06/12.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class Prof2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var myLeftButton: UIBarButtonItem!
    
    @IBOutlet weak var Private_TableView: UITableView!
    @IBOutlet weak var Social_TableView: UITableView!
    @IBOutlet weak var Rebuew_TableView: UITableView!
    @IBOutlet weak var Ochatto_TableView: UITableView!
    @IBOutlet weak var List_TableView: UITableView!
    
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
    
    @IBOutlet weak var Private_TableWakuView: UIView!
    @IBOutlet weak var Social_TableWakuView: UIView!
    @IBOutlet weak var Rebuew_TableWakuView: UIView!
    @IBOutlet weak var Ochatto_TableWakuView: UIView!
    @IBOutlet weak var List_TableWakuView: UIView!
    
    @IBAction func prof1(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func tab1_push(sender: AnyObject) {
        
        Private_TableWakuView.hidden = false
        Social_TableWakuView.hidden = true
        Rebuew_TableWakuView.hidden = true
        Ochatto_TableWakuView.hidden = true
        List_TableWakuView.hidden = true
    }
    
    @IBAction func tab2_push(sender: AnyObject) {
        
        Private_TableWakuView.hidden = true
        Social_TableWakuView.hidden = false
        Rebuew_TableWakuView.hidden = true
        Ochatto_TableWakuView.hidden = true
        List_TableWakuView.hidden = true
    }
    
    @IBAction func tab3_push(sender: AnyObject) {
        
        Private_TableWakuView.hidden = true
        Social_TableWakuView.hidden = true
        Rebuew_TableWakuView.hidden = false
        Ochatto_TableWakuView.hidden = true
        List_TableWakuView.hidden = true
    }
    
    @IBAction func tab4_push(sender: AnyObject) {
        
        Private_TableWakuView.hidden = true
        Social_TableWakuView.hidden = true
        Rebuew_TableWakuView.hidden = true
        Ochatto_TableWakuView.hidden = false
        List_TableWakuView.hidden = true
    }
    
    @IBAction func tab5_push(sender: AnyObject) {
        
        Private_TableWakuView.hidden = true
        Social_TableWakuView.hidden = true
        Rebuew_TableWakuView.hidden = true
        Ochatto_TableWakuView.hidden = true
        List_TableWakuView.hidden = false
    }
    
    @IBAction func newGroupe_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "GroupeMake", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("GroupeMakeRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func profHelp_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "Prof_Help", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("Prof_HelpRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func privateFashonNikki_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "PrivatFasshonNikki", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("PrivatFasshonNikkiRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func privateFashon_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "Privat_Fashon", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("Privat_FashonRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func acountSet_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "AcountViewController", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("AcountSetRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func Status_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "Status_View", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("Status_ViewRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func Intaresut_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "Intaresut_ViewController", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("Intaresut_ViewControllerRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
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
        
        self.navigationItem.title = "プロフィール②"
        
        Private_TableView.delegate = self
        Private_TableView.dataSource = self
        
        Social_TableView.delegate = self
        Social_TableView.dataSource = self
        
        Rebuew_TableView.delegate = self
        Rebuew_TableView.dataSource = self
        
        Ochatto_TableView.delegate = self
        Ochatto_TableView.dataSource = self
        
        List_TableView.delegate = self
        List_TableView.dataSource = self
        
        Private_TableWakuView.hidden = false
        Social_TableWakuView.hidden = true
        Rebuew_TableWakuView.hidden = true
        Ochatto_TableWakuView.hidden = true
        List_TableWakuView.hidden = true
        
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
        if (tableView == Private_TableView){
            return 7
        }else if (tableView == Social_TableView){
            return 7
        }else if (tableView == Rebuew_TableView){
            return 2
        }else if (tableView == Ochatto_TableView){
            return 4
        }else if (tableView == List_TableView){
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
        if (tableView == Private_TableView){
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
            if (tableView == Social_TableView){
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
                if (tableView == Rebuew_TableView){
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
                    
                    }else
                        if (tableView == List_TableView){
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
