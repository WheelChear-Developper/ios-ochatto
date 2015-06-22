//
//  HomeViewController.swift
//  ochatto
//
//  Created by MacServer on 2015/06/08.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class HomeViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    //地図ビュー
    @IBOutlet weak var myMapView: MKMapView!
    
    //ロケーションマネージャー
    var myLocationManager: CLLocationManager!
    
    @IBOutlet weak var frame1: UIView!
    
    @IBAction func hito1_push(sender: AnyObject) {
        frame1.hidden = false
    }
    
    @IBAction func frame1_push(sender: AnyObject) {
        frame1.hidden = true
    }
    @IBAction func frsme1_close(sender: AnyObject) {
        frame1.hidden = true
    }
    
    @IBOutlet weak var frame2: UIView!
    @IBAction func house1_push(sender: AnyObject) {
        frame2.hidden = false
    }
    
    @IBAction func frame2_push(sender: AnyObject) {
        frame2.hidden = true
        
        var storyboard: UIStoryboard = UIStoryboard(name: "home1ViewController", bundle: NSBundle.mainBundle())
        var SetViewController: home1ViewController = storyboard.instantiateInitialViewController() as! home1ViewController
        
        self.navigationController?.pushViewController(SetViewController, animated: true)
    }
    @IBAction func frsme2_close(sender: AnyObject) {
        frame2.hidden = true
    }
    
    @IBAction func list1_push(sender: AnyObject) {
        self.tabBarController?.selectedIndex = 4
    }

    @IBAction func alert_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "AlertViewController", bundle: NSBundle.mainBundle())
        var SetViewController: AlertViewController = storyboard.instantiateInitialViewController() as! AlertViewController
        
        self.navigationController?.pushViewController(SetViewController, animated: true)
    }
    
    @IBAction func sos_push(sender: AnyObject) {
        var storyboard: UIStoryboard = UIStoryboard(name: "SosViewController", bundle: NSBundle.mainBundle())
        var SetViewController: SosViewController = storyboard.instantiateInitialViewController() as! SosViewController
        
        self.navigationController?.pushViewController(SetViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        frame1.hidden = true
        frame2.hidden = true
        
        // LocationManagerの生成.
        myLocationManager = CLLocationManager()
        
        // Delegateの設定.
        myLocationManager.delegate = self
        
        // 位置情報取得の許可を求めるメッセージの表示．必須．
        myLocationManager.requestAlwaysAuthorization()
        // 位置情報の精度を指定
        myLocationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        // 位置情報取得間隔を指定．指定した値（メートル）移動したら位置情報を更新する
        myLocationManager.distanceFilter = 10.0
        
        
        
        // セキュリティ認証のステータスを取得.
        let status = CLLocationManager.authorizationStatus()
        
        // まだ認証が得られていない場合は、認証ダイアログを表示.
        if(status == CLAuthorizationStatus.NotDetermined) {
            
            // まだ承認が得られていない場合は、認証ダイアログを表示.
            self.myLocationManager.requestAlwaysAuthorization()
        }
        
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
        

        //ナビゲーション表示
        self.myMapView.setUserTrackingMode(MKUserTrackingMode.None, animated: true)
        
        // 位置情報の更新を開始.
//        myLocationManager.startUpdatingLocation()
        
    }
    
    // GPSから値を取得した際に呼び出されるメソッド.
    func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation, fromLocation oldLocation: CLLocation){
        
        // 配列から現在座標を取得.
        var myLocation:CLLocationCoordinate2D = newLocation.coordinate
        
        // 縮尺.
        let myLatDist : CLLocationDistance = 10
        let myLonDist : CLLocationDistance = 10
        
        // Regionを作成.
        let myRegion: MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(myLocation, myLatDist, myLonDist);
        
        // MapViewに反映.
        myMapView.setRegion(myRegion, animated: true)
        
        


        
    }
    
    /* 位置情報取得失敗時に実行される関数 */
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        // この例ではLogにErrorと表示するだけ．
        NSLog("Error")
    }
    
    
    // Regionが変更した時に呼び出されるメソッド.
    func mapView(mapView: MKMapView!, regionDidChangeAnimated animated: Bool) {
        println("regionDidChangeAnimated")
    }
    
    // 認証が変更された時に呼び出されるメソッド.
    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        switch status{
        case .AuthorizedWhenInUse:
            println("AuthorizedWhenInUse")
        case .AuthorizedAlways:
            println("AuthorizedAlways")
        case .Denied:
            println("Denied")
        case .Restricted:
            println("Restricted")
        case .NotDetermined:
            println("NotDetermined")
        default:
            println("etc.")
        }
    }
    
}





