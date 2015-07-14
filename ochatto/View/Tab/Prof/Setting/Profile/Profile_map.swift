//
//  Profile_map.swift
//  ochatto
//
//  Created by MacServer on 2015/07/13.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class Profile_map: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    //Configクラス定義
    var config_cls:NSObject.Type = NSClassFromString("Configuration") as! NSObject.Type
    
    //地図ビュー
    @IBOutlet weak var myMapView: MKMapView!
    
    //ロケーションマネージャー
    var myLocationManager: CLLocationManager!
    
    @IBAction func close_push(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func save_push(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Config用のクラス設定
        var config:Configuration = (config_cls() as! Configuration)
        
        
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
        
        
        //ピンを生成
        var theRoppongiAnnotation = MKPointAnnotation()
        //ピンを置く場所を設定
        theRoppongiAnnotation.coordinate  = myCoordinate
        //ピンのタイトルの設定
        theRoppongiAnnotation.title       = "ピン置いたぜぇ〜"
        //ピンのサブタイトルを設定
        theRoppongiAnnotation.subtitle    = "ワイルドだろぅ〜？"
        //ピンを地図上に追加
        myMapView.addAnnotation(theRoppongiAnnotation)
        
        
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
