//
//  CreateUserService+POST.swift
//  Swift3Buddy
//
//  Created by Anil Kumar on 2/27/17.
//  Copyright © 2017 Anil Kumar. All rights reserved.
//

import Gloss
import Alamofire

class CreateUserPostService {
    
    static func user (params:[String: AnyObject] , completionHandler: @escaping (DataResponse<Any>) -> Void) {
        
        let header : HTTPHeaders = ["Authorization" : "Buddy \(Default.getObject(key: "AuthAccessToken"))"]
        
        let request = Alamofire.request("https://api.buddyplatform.com/users", method: .post , parameters: params, encoding: JSONEncoding.default, headers: header ).responseJSON { response in
            print(response.result)
            completionHandler(response)
        }
        debugPrint(request)
    }
}
