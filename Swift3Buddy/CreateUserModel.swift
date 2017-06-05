//
//  CreateUserModel.swift
//  Swift3Buddy
//
//  Created by Anil Kumar on 2/27/17.
//  Copyright © 2017 Anil Kumar. All rights reserved.
//

import Gloss

struct CreateUser {
    
    let userName: String?
    let password: String?
    let email: String?
    let firstName: String?
    let lastName: String?
    
    init(userName: String?,password: String?, email: String?, firstName: String?, lastName: String?) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.userName = userName
        self.password = password
    }
    
    //    init?(json: JSON) {
    //        self.appID = "id" <~~ json
    //        self.appKey = "login" <~~ json
    //    }
    func toJSON() -> JSON? {
        return jsonify([
            "email" ~~> self.email,
            "firstName" ~~> self.firstName,
            "lastName" ~~> self.lastName,
            "userName" ~~> self.userName,
            "password" ~~> self.password
            ])
    }
}
