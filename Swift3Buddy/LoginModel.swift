//
//  LoginModel.swift
//  Swift3Buddy
//
//  Created by Anil Kumar on 2/28/17.
//  Copyright © 2017 Anil Kumar. All rights reserved.
//

import Gloss

struct LoginModel {
    
    let userName: String?
    let password: String?
   
    
    init(userName: String?, password: String?) {
        self.userName = userName
        self.password = password
        
    }

    func toJSON() -> JSON? {
        return jsonify([
            "userName" ~~> self.userName,
            "password" ~~> self.password,
            
            ])
    }
    
}
