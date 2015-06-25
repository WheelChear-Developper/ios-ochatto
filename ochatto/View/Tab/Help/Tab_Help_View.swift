//
//  Tab_Help_View.swift
//  ochatto
//
//  Created by MacServer on 2015/06/08.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class Tab_Help_View: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var Help_TableView: UITableView!
    
    // Sectionで使用する配列を定義する.
    private let mySections: NSArray = ["お困りレベル５", "お困りレベル３〜４", "お困りレベル２〜１"]
    
    // Tableで使用する配列を定義する.
    private let level5Items: NSArray = ["1"]
    private let level4_3Items: NSArray = ["1", "2", "3"]
    private let level2_1Items: NSArray = ["1", "2", "3"]
    
    @IBAction func red_push(sender: AnyObject) {
        var lastPath:NSIndexPath = NSIndexPath(forRow:0, inSection:0)
        Help_TableView.scrollToRowAtIndexPath( lastPath , atScrollPosition: .Top, animated: true)
    }
    
    @IBAction func yellow_push(sender: AnyObject) {
        var lastPath:NSIndexPath = NSIndexPath(forRow:0, inSection:1)
        Help_TableView.scrollToRowAtIndexPath( lastPath , atScrollPosition: .Top, animated: true)
    }
    
    @IBAction func green_push(sender: AnyObject) {
        var lastPath:NSIndexPath = NSIndexPath(forRow:0, inSection:2)
        Help_TableView.scrollToRowAtIndexPath( lastPath , atScrollPosition: .Top, animated: true)
    }
    
    @IBAction func HelpInfo_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "HelpInfo_ViewController", bundle: NSBundle.mainBundle())
        var groupeMake: HelpInfo_ViewController = storyboard.instantiateInitialViewController() as! HelpInfo_ViewController
        
        self.navigationController?.pushViewController(groupeMake, animated: true)
    }
    
    @IBAction func rebuewTsuuchi_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "HelpRebuewTsuuchi_ViewController", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("HelpRebuewTsuuchi_ViewControllerRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    @IBAction func rebuewWrite_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "HelpRebuewWrite", bundle: NSBundle.mainBundle())
        var navigation: UINavigationController = storyboard.instantiateViewControllerWithIdentifier("HelpRebuewWriteRoot") as! UINavigationController
        
        self.presentViewController(navigation, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Help!"
        
        Help_TableView.delegate = self
        Help_TableView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    セクションの数を返す.
    */
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return mySections.count
    }
    
    /*
    セクションのタイトルを返す.
    */
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return mySections[section] as? String
    }
    
    /*
    Cellが選択された際に呼び出される.
    */
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.section == 0 {
            println("Value: \(level5Items[indexPath.row])")
        } else if indexPath.section == 1 {
            println("Value: \(level4_3Items[indexPath.row])")
        } else if indexPath.section == 2 {
            println("Value: \(level2_1Items[indexPath.row])")
        }
    }
    
    /*
    テーブルに表示する配列の総数を返す.
    */
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return level5Items.count
        } else if section == 1 {
            return level4_3Items.count
        } else if section == 2 {
            return level2_1Items.count
        } else {
            return 0
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        var h :CGFloat = 0
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                h = 140
            default:
                break // do nothing
            }
        } else if indexPath.section == 1 {
            switch indexPath.row {
            case 0:
                h = 140
            case 1:
                h = 170
            case 2:
                h = 140
            default:
                break // do nothing
            }
        } else if indexPath.section == 2 {
            switch indexPath.row {
            case 0:
                h = 140
            case 1:
                h = 140
            case 2:
                h = 140
            default:
                break // do nothing
            }
        }else{
            return 0
        }
        return h
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 0 {
            let label = UILabel(frame: CGRect(x:0, y:0, width: tableView.bounds.width, height: 50))
            label.textAlignment = NSTextAlignment.Left
            label.font = UIFont.italicSystemFontOfSize(12)
            label.backgroundColor = UIColor(red:0.906,green:0.220,blue:0.157,alpha:1.0)//e73828
            label.textColor =  UIColor.blackColor()
            label.text = mySections[section] as? String
            
            return label
        } else if section == 1 {
            let label = UILabel(frame: CGRect(x:0, y:0, width: tableView.bounds.width, height: 50))
            label.textAlignment = NSTextAlignment.Left
            label.font = UIFont.italicSystemFontOfSize(12)
            label.backgroundColor = UIColor(red:1.0,green:0.941,blue:0.0,alpha:1.0)//fff000
            label.textColor =  UIColor.blackColor()
            label.text = mySections[section] as? String
            
            return label
        } else if section == 2 {
            let label = UILabel(frame: CGRect(x:0, y:0, width: tableView.bounds.width, height: 50))
            label.textAlignment = NSTextAlignment.Left
            label.font = UIFont.italicSystemFontOfSize(12)
            label.backgroundColor = UIColor(red:0.0,green:0.569,blue:0.224,alpha:1.0)//009139
            label.textColor =  UIColor.blackColor()
            label.text = mySections[section] as? String
            
            return label
        } else {
            let label = UILabel(frame: CGRect(x:0, y:0, width: tableView.bounds.width, height: 50))
            label.textAlignment = NSTextAlignment.Left
            label.font = UIFont.italicSystemFontOfSize(12)
            label.backgroundColor = UIColor(red:0.0,green:0.5,blue:1.0,alpha:1.0)
            label.textColor =  UIColor.whiteColor()
            label.text = mySections[section] as? String
            
            return label
        }
    }
    
    /*
    Cellに値を設定する.
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell-damy", forIndexPath: indexPath) as! UITableViewCell
        
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
                let cell = tableView.dequeueReusableCellWithIdentifier("cell34-1", forIndexPath: indexPath) as! UITableViewCell
            case 1:
                let cell = tableView.dequeueReusableCellWithIdentifier("cell34-2", forIndexPath: indexPath) as! UITableViewCell
            case 2:
                let cell = tableView.dequeueReusableCellWithIdentifier("cell34-3", forIndexPath: indexPath) as! UITableViewCell
            default:
                break // do nothing
            }
        } else if indexPath.section == 2 {
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCellWithIdentifier("cell12-1", forIndexPath: indexPath) as! UITableViewCell
            case 1:
                let cell = tableView.dequeueReusableCellWithIdentifier("cell12-2", forIndexPath: indexPath) as! UITableViewCell
            case 2:
                let cell = tableView.dequeueReusableCellWithIdentifier("cell12-3", forIndexPath: indexPath) as! UITableViewCell
            default:
                break // do nothing
            }
        }
        
        return cell
    }
    
}