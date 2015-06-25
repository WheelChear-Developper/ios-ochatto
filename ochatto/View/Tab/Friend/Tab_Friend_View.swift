//
//  Tab_Friend_View.swift
//  ochatto
//
//  Created by MacServer on 2015/06/08.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class Tab_Friend_View: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var Friend_TableView: UITableView!
    @IBOutlet weak var List_TableView: UITableView!
    
    @IBOutlet weak var All_TableWaku: UIView!
    @IBOutlet weak var Groupe_TableWaku: UIView!
    
    // Sectionで使用する配列を定義する.
    private let mySections: NSArray = ["たいへんレベル５", "たいへんレベル４", "たいへんレベル３", "たいへんレベル２", "たいへんレベル１"]
    
    // Tableで使用する配列を定義する.
    private let level5Items: NSArray = ["1"]
    private let level4Items: NSArray = ["1", "2", "3", "4"]
    private let level3Items: NSArray = ["1", "2"]
    private let level2Items: NSArray = ["1", "2", "3", "4", "5"]
    private let level1Items: NSArray = ["1", "2", "3", "4"]
    
    @IBAction func friendSerch_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "Friend_Set", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("Friend_SetRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func tab1_push(sender: AnyObject) {
        
        All_TableWaku.hidden = false
        Groupe_TableWaku.hidden = true
    }
    
    @IBAction func tab2_push(sender: AnyObject) {
        
        All_TableWaku.hidden = true
        Groupe_TableWaku.hidden = false
    }
    
    @IBAction func newGroupe_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "GroupeMake", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("GroupeMakeRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func deleteBtn(sender: UIButton) {
        let alertController = UIAlertController(title: "このグループを削除しますか？", message: "", preferredStyle: .Alert)
        let otherAction = UIAlertAction(title: "OK", style: .Default) {
            action in println("pushed OK!")
        }
        let cancelAction = UIAlertAction(title: "CANCEL", style: .Cancel) {
            action in println("Pushed CANCEL!")
        }
        
        alertController.addAction(otherAction)
        alertController.addAction(cancelAction)
        presentViewController(alertController, animated: true, completion: nil)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "友だちタブ"
        
        Friend_TableView.delegate = self
        Friend_TableView.dataSource = self
        List_TableView.delegate = self
        List_TableView.dataSource = self
        
        All_TableWaku.hidden = false
        Groupe_TableWaku.hidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    セクションの数を返す.
    */
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        if (tableView == Friend_TableView){
            return mySections.count
        }else if (tableView == List_TableView){
            return 1
        }else{
            return 0
        }
    }
    
    /*
    セクションのタイトルを返す.
    */
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (tableView == Friend_TableView){
            return mySections[section] as? String
        }else if (tableView == List_TableView){
            return ""
        }else{
            return ""
        }
    }
    
    // テーブルヘッダーの高さをかえします（フッターだけどヘッダーとして利用）
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if (tableView == Friend_TableView){
            return Friend_TableView.sectionHeaderHeight
        }else{
            return 0
        }
    }
    
    /*
    Cellが選択された際に呼び出される.
    */
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if (tableView == Friend_TableView){
            if indexPath.section == 0 {
                println("Value: \(level5Items[indexPath.row])")
            } else if indexPath.section == 1 {
                println("Value: \(level4Items[indexPath.row])")
            } else if indexPath.section == 2 {
                println("Value: \(level3Items[indexPath.row])")
            } else if indexPath.section == 3 {
                println("Value: \(level2Items[indexPath.row])")
            } else if indexPath.section == 4 {
                println("Value: \(level1Items[indexPath.row])")
            }
        }else if (tableView == List_TableView){
        }else{
            
        }
    }
    
    /*
    テーブルに表示する配列の総数を返す.
    */
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (tableView == Friend_TableView){
            if section == 0 {
                return level5Items.count
            } else if section == 1 {
                return level4Items.count
            } else if section == 2 {
                return level3Items.count
            } else if section == 3 {
                return level2Items.count
            } else if section == 4 {
                return level1Items.count
            } else {
                return 0
            }
        }else if (tableView == List_TableView){
            return 4
        }else{
            return 0
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if (tableView == Friend_TableView){
            return 46
        }else if (tableView == List_TableView){
            return 26
        }else{
            return 0
        }
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if (tableView == Friend_TableView){
            if section == 0 {
                let label = UILabel(frame: CGRect(x:0, y:0, width: tableView.bounds.width, height: 50))
                label.textAlignment = NSTextAlignment.Left
                label.font = UIFont.italicSystemFontOfSize(12)
                label.backgroundColor = UIColor(red:0.969,green:0.067,blue:0.114,alpha:1.0)//f7111d
                label.textColor =  UIColor.blackColor()
                label.text = mySections[section] as? String
                
                return label
            } else if section == 1 {
                let label = UILabel(frame: CGRect(x:0, y:0, width: tableView.bounds.width, height: 50))
                label.textAlignment = NSTextAlignment.Left
                label.font = UIFont.italicSystemFontOfSize(12)
                label.backgroundColor = UIColor(red:0.910,green:0.380,blue:0.020,alpha:1.0)//e86105
                label.textColor =  UIColor.blackColor()
                label.text = mySections[section] as? String
                
                return label
            } else if section == 2 {
                let label = UILabel(frame: CGRect(x:0, y:0, width: tableView.bounds.width, height: 50))
                label.textAlignment = NSTextAlignment.Left
                label.font = UIFont.italicSystemFontOfSize(12)
                label.backgroundColor = UIColor(red:0.957,green:0.859,blue:0.165,alpha:1.0)//f4db2a
                label.textColor =  UIColor.blackColor()
                label.text = mySections[section] as? String
                
                return label
            } else if section == 3 {
                let label = UILabel(frame: CGRect(x:0, y:0, width: tableView.bounds.width, height: 50))
                label.textAlignment = NSTextAlignment.Left
                label.font = UIFont.italicSystemFontOfSize(12)
                label.backgroundColor = UIColor(red:0.792,green:0.969,blue:0.157,alpha:1.0)//caf728
                label.textColor =  UIColor.blackColor()
                label.text = mySections[section] as? String
                
                return label
            } else if section == 4 {
                let label = UILabel(frame: CGRect(x:0, y:0, width: tableView.bounds.width, height: 50))
                label.textAlignment = NSTextAlignment.Left
                label.font = UIFont.italicSystemFontOfSize(12)
                label.backgroundColor = UIColor(red:0.216,green:0.584,blue:0.886,alpha:1.0)//009139 hexString: "#3795e2", alpha:1.0)//009139
                label.textColor =  UIColor.blackColor()
                label.text = mySections[section] as? String
                
                return label
            } else {
                return UIView()
            }
        }else{
            return UIView()
        }
    }
    
    /*
    Cellに値を設定する.
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell-damy", forIndexPath: indexPath) as! UITableViewCell
        
        if (tableView == Friend_TableView){
            if indexPath.section == 0 {
                switch indexPath.row {
                case 0:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell5-1", forIndexPath: indexPath) as! UITableViewCell
                default:
                    break // do nothing
                }
            } else if indexPath.section == 1 {
                switch indexPath.row {
                case 0:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell4-1", forIndexPath: indexPath) as! UITableViewCell
                case 1:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell4-2", forIndexPath: indexPath) as! UITableViewCell
                case 2:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell4-3", forIndexPath: indexPath) as! UITableViewCell
                case 3:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell4-4", forIndexPath: indexPath) as! UITableViewCell
                default:
                    break // do nothing
                }
            } else if indexPath.section == 2 {
                switch indexPath.row {
                case 0:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell3-1", forIndexPath: indexPath) as! UITableViewCell
                case 1:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell3-2", forIndexPath: indexPath) as! UITableViewCell
                default:
                    break // do nothing
                }
            } else if indexPath.section == 3 {
                switch indexPath.row {
                case 0:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell2-1", forIndexPath: indexPath) as! UITableViewCell
                case 1:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell2-2", forIndexPath: indexPath) as! UITableViewCell
                case 2:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell2-3", forIndexPath: indexPath) as! UITableViewCell
                case 3:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell2-4", forIndexPath: indexPath) as! UITableViewCell
                case 4:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell2-5", forIndexPath: indexPath) as! UITableViewCell
                default:
                    break // do nothing
                }
            } else if indexPath.section == 4 {
                switch indexPath.row {
                case 0:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell1-1", forIndexPath: indexPath) as! UITableViewCell
                case 1:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell1-2", forIndexPath: indexPath) as! UITableViewCell
                case 2:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell1-3", forIndexPath: indexPath) as! UITableViewCell
                case 3:
                    let cell = tableView.dequeueReusableCellWithIdentifier("cell1-4", forIndexPath: indexPath) as! UITableViewCell
                default:
                    break // do nothing
                }
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
