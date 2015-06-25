//
//  Configuration.swift
//  wheel-app
//
//  Created by MacServer on 2015/04/30.
//  Copyright (c) 2015年 Mobile Innovation, LLC. All rights reserved.
//

import Foundation

@objc(Configuration)
class Configuration: NSObject {
    
    let CONFIGURATION_SAMPLEBOOL = "Configuration.SampleBool"
    func setSampleBool(value: Bool) {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setBool(value, forKey: CONFIGURATION_SAMPLEBOOL)
        userDefaults.synchronize()
    }
    func getSampleBool() ->(Bool) {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var dic = [CONFIGURATION_SAMPLEBOOL: false]
        userDefaults.registerDefaults(dic)
        return userDefaults.boolForKey(CONFIGURATION_SAMPLEBOOL)
    }
    
    let CONFIGURATION_SAMPLESTRING = "Configuration.SampleString"
    func setSampleString(value: String) {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject(value, forKey: CONFIGURATION_SAMPLESTRING)
        userDefaults.synchronize()
    }
    func getSampleString() ->(String) {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var dic = [CONFIGURATION_SAMPLESTRING: ""]
        userDefaults.registerDefaults(dic)
        return userDefaults.objectForKey(CONFIGURATION_SAMPLESTRING) as! String
    }
    
    let CONFIGURATION_SAMPLEDOUBLE = "Configuration.SampleDouble"
    func setSampleDouble(value: Double) {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setDouble(value, forKey: CONFIGURATION_SAMPLEDOUBLE)
        userDefaults.synchronize()
    }
    func getSampleDouble() ->(Double) {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var dic = [CONFIGURATION_SAMPLEDOUBLE: 0]
        userDefaults.registerDefaults(dic)
        return userDefaults.doubleForKey(CONFIGURATION_SAMPLEDOUBLE)
    }
    
    let CONFIGURATION_SAMPLEINT = "Configuration.SampleInt"
    func setSampleInt(value: Int) {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setInteger(value, forKey: CONFIGURATION_SAMPLEINT)
        userDefaults.synchronize()
    }
    func getSampleInt() ->(Int) {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var dic = [CONFIGURATION_SAMPLEINT: 0]
        userDefaults.registerDefaults(dic)
        return userDefaults.integerForKey(CONFIGURATION_SAMPLEINT)
    }
    
    
    
    
    
    let CONFIGURATION_MAILTYPE = "Configuration.MailType"
    func setMailType(value: Int) {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setInteger(value, forKey: CONFIGURATION_SAMPLEINT)
        userDefaults.synchronize()
    }
    func getMailType() ->(Int) {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var dic = [CONFIGURATION_SAMPLEINT: 0]
        userDefaults.registerDefaults(dic)
        return userDefaults.integerForKey(CONFIGURATION_SAMPLEINT)
    }
    
}
