//
//  DeviceModel.swift
//  Swift3Buddy
//
//  Created by Anil Kumar on 2/27/17.
//  Copyright © 2017 Anil Kumar. All rights reserved.
//

import Gloss

struct Device {
    
    let appID: String?
    let appKey: String?
    let platform: String?
    
    init(appID: String?, appKey: String?, platform: String?) {
        self.appID = appID
        self.appKey = appKey
        self.platform = platform
    }
    
//    init?(json: JSON) {
//        self.appID = "id" <~~ json
//        self.appKey = "login" <~~ json
//    }
    func toJSON() -> JSON? {
        return jsonify([
            "appID" ~~> self.appID,
            "appKey" ~~> self.appKey,
            "platform" ~~> self.platform
            ])
    }
    
}
