//
//  UserDefaults+=Helpers.swift
//  Swift3Buddy
//
//  Created by Anil Kumar on 2/27/17.
//  Copyright © 2017 Anil Kumar. All rights reserved.
//

import Foundation

class Default {
    
    
    static func setObject(value:AnyObject ,key:String) {
        let pref = UserDefaults.standard
        pref.set(value, forKey: key)
        pref.synchronize()
    }
    
  static  func getObject(key:String) -> AnyObject {
        let pref = UserDefaults.standard
        return pref.object(forKey: key)! as AnyObject
    }

}
