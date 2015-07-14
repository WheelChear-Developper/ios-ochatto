//
//  SosViewController.swift
//  ochatto
//
//  Created by MacServer on 2015/06/11.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit
import MapKit

class SosViewController: UIViewController, MKMapViewDelegate {
    
    private var myLeftButton: UIBarButtonItem!
    
    @IBOutlet weak var myMapView: MKMapView!
    
    //長押し検知器
    var longtapGesture: UILongPressGestureRecognizer = UILongPressGestureRecognizer()
    
    @IBAction func naviclose(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "お茶っと"
        
        // 左ボタンを作成する..
        myLeftButton = UIBarButtonItem(title: "", style: .Plain, target: nil, action: "")
        // tagを設定する.
        myLeftButton.tag = 1
        // ナビゲーションバーの左に設置する.
        self.navigationItem.leftBarButtonItem = myLeftButton
        
        // 中心点の緯度経度.
        let myLat: CLLocationDegrees = 35.664487
        let myLon: CLLocationDegrees = 139.708028
        let myCoordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLat, myLon) as CLLocationCoordinate2D
        
        // 縮尺.
        let myLatDist : CLLocationDistance = 7000
        let myLonDist : CLLocationDistance = 7000
        
        // Regionを作成.
        let myRegion: MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(myCoordinate, myLatDist, myLonDist)
        self.myMapView.setRegion(myRegion, animated:true)
        
        // 長押しのUIGestureRecognizerを生成.
        self.longtapGesture.addTarget(self, action: "longPressed:")
        
        // MapViewにUIGestureRecognizerを追加.
        self.myMapView.addGestureRecognizer(self.longtapGesture)
        
    }
    
    func longPressed(sender: UILongPressGestureRecognizer){
        
        //指を離したときだけ反応するようにする
        if(sender.state != .Began){
            return
        }
        
        var url : NSURL! = NSURL(string: "http://maps.apple.com/?ll=35.664487,139.708028&q=loc:35.664487,139.708028")
        if UIApplication.sharedApplication().canOpenURL(url) {
            UIApplication.sharedApplication().openURL(url)
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
