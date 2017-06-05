//
//  RegisterdeviceService+POST.swift
//  Swift3Buddy
//
//  Created by Anil Kumar on 2/27/17.
//  Copyright © 2017 Anil Kumar. All rights reserved.
//


import Gloss
import Alamofire

class RegisterDevicePostService {
    
    static func addDevice (params:[String: AnyObject] , completionHandler: @escaping (DataResponse<Any>) -> Void) {
        let request = Alamofire.request("https://api.buddyplatform.com/devices", method: .post , parameters: params, encoding: JSONEncoding.default).responseJSON { response in
            print(response.result)
            completionHandler(response)
        }
        debugPrint(request)
    }
}
