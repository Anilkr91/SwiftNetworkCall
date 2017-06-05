//
//  DeviceResponseModel.swift
//  Swift3Buddy
//
//  Created by Anil Kumar on 2/27/17.
//  Copyright © 2017 Anil Kumar. All rights reserved.
//

import Gloss

struct DeviceResponse {
    
    let accessToken: String?
    
        init?(json: JSON) {
            self.accessToken = "result.accessToken" <~~ json
        }
    func toJSON() -> JSON? {
        return jsonify([
            "result.accessToken" ~~> self.accessToken,
            ])
    }
}
