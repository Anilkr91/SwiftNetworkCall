//
//  LoginService+POST.swift
//  Swift3Buddy
//
//  Created by Anil Kumar on 2/28/17.
//  Copyright © 2017 Anil Kumar. All rights reserved.
//

import Gloss
import Alamofire

class LoginPostService {
    
    static func userlogin (params:[String: AnyObject] , completionHandler: @escaping (DataResponse<Any>) -> Void) {
        
        let header : HTTPHeaders = ["Authorization" : "Buddy \(Default.getObject(key: "AuthAccessToken"))"]
        
        let request = Alamofire.request("https://api.buddyplatform.com/users/login", method: .post , parameters: params, encoding: JSONEncoding.default, headers: header ).responseJSON { response in
            print(response.result)
            completionHandler(response)
        }
        debugPrint(request)
    }
}
