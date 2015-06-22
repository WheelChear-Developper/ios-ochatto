//
//  Prof_Help.swift
//  ochatto
//
//  Created by MacServer on 2015/06/22.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class Prof_Help: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var myLeftButton: UIBarButtonItem!
    
    @IBOutlet weak var Help_TableView: UITableView!
    
    @IBAction func naviclose(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Help_TableView.delegate = self
        Help_TableView.dataSource = self
        
        self.navigationItem.title = "Ochatto"
        
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
        return 8
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 130
    }
    
    /*
    Cellに値を設定するデータソースメソッド.
    (実装必須)
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell-head", forIndexPath: indexPath) as! UITableViewCell
        if (tableView == Help_TableView){
            if(indexPath.row == 0){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 1){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath) as! UITableViewCell
            }
            
            if(indexPath.row == 2){
                let cell = tableView.dequeueReusableCellWithIdentifier("cell3", forIndexPath: indexPath) as! UITableViewCell
            }
            
        }
        
        return cell
    }
    
}

