//
//  AlertViewController.swift
//  ochatto
//
//  Created by MacServer on 2015/06/11.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    private var myLeftButton: UIBarButtonItem!
    
    @IBOutlet weak var TableView: UITableView!
    
    //長押し検知器
    var longtapGesture: UILongPressGestureRecognizer = UILongPressGestureRecognizer()
    
    @IBAction func naviclose(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Ochatto"
        
        // 左ボタンを作成する..
        myLeftButton = UIBarButtonItem(title: "", style: .Plain, target: nil, action: "")
        // tagを設定する.
        myLeftButton.tag = 1
        // ナビゲーションバーの左に設置する.
        self.navigationItem.leftBarButtonItem = myLeftButton
        
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
    
    /*
    Cellに値を設定するデータソースメソッド.
    (実装必須)
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as! UITableViewCell
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
  