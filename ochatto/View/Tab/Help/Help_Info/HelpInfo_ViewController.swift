//
//  HelpInfo_ViewController.swift
//  ochatto
//
//  Created by MacServer on 2015/06/20.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class HelpInfo_ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    private var myLeftButton: UIBarButtonItem!
    
    @IBOutlet weak var HelpInfo_TableView: UITableView!
    
    @IBAction func naviclose(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func HelpMake_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "HelpMake_ViewController", bundle: NSBundle.mainBundle())
        var groupeMake: HelpMake_ViewController = storyboard.instantiateInitialViewController() as! HelpMake_ViewController
        
        self.navigationController?.pushViewController(groupeMake, animated: true)
    }
    
    @IBAction func Select_push(sender: UIButton) {
        let alertController = UIAlertController(title: "解決しましたか？", message: "", preferredStyle: .Alert)
        let otherAction = UIAlertAction(title: "OK", style: .Default) {
            action in println("pushed OK!")
            self.navigationController?.popViewControllerAnimated(true)
        }
        let cancelAction = UIAlertAction(title: "CANCEL", style: .Cancel) {
            action in println("Pushed CANCEL!")
        }
        
        alertController.addAction(otherAction)
        alertController.addAction(cancelAction)
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    // Tableで使用する配列を定義する.
    private let ListItems: NSArray = ["1", "2", "3", "4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Help Me!"
        
        HelpInfo_TableView.delegate = self
        HelpInfo_TableView.dataSource = self
        
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
    Cellが選択された際に呼び出される.
    */
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        println("Value: \(ListItems[indexPath.row])")
    }
    
    /*
    テーブルに表示する配列の総数を返す.
    */
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return ListItems.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        var h :CGFloat = 0
        switch indexPath.row {
        case 0:
            h = 90
        case 1:
            h = 90
        case 2:
            h = 90
        case 3:
            h = 90
        default:
            break // do nothing
        }
        return h
    }
    
    /*
    Cellに値を設定する.
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell-damy", forIndexPath: indexPath) as! UITableViewCell
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! UITableViewCell
        case 1:
            let cell = tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath) as! UITableViewCell
        case 2:
            let cell = tableView.dequeueReusableCellWithIdentifier("cell3", forIndexPath: indexPath) as! UITableViewCell
        case 3:
            let cell = tableView.dequeueReusableCellWithIdentifier("cell4", forIndexPath: indexPath) as! UITableViewCell
        default:
            break // do nothing
        }
        
        return cell
    }
    
}
