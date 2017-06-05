//
//  ViewController.swift
//  Swift3Buddy
//
//  Created by Anil Kumar on 2/27/17.
//  Copyright © 2017 Anil Kumar. All rights reserved.
//

import UIKit
import Gloss
import MessageUI

class ViewController: UIViewController {

    weak var cvc: ContainerViewController?
    var pint = 10
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
//        cvc = childViewControllers[0] as! ContainerViewController
//        cvc?.pvc = self
     sendEmail()
        
        // Do any additional setup after loading the view, typically from a nib.
//        let params = Device(appID: "bbbbbc.PjJbMPPFnrfxc", appKey: "ac3598f1-d4eb-43dc-72c7-44ede47be01f",platform: "iOS").toJSON()
//        RegisterDevicePostService.addDevice(params: params as! [String : AnyObject]) { (json) in
//            let login = DeviceResponse(json: json.result.value as! JSON)
//            
//            Default.setObject(value: login?.accessToken as AnyObject, key: "AuthAccessToken")
//
//        }
        
//        let param = CreateUser(userName: "Anilkr91", password: "pwd123",  email: "anilklal91@gmail.com", firstName: "Anil", lastName: "Kumar").toJSON()
//        CreateUserPostService.user(params: param as! [String : AnyObject] ) { (json) in
//            print(json)
//        }
        
//        let param = LoginModel(userName: "Anilkr91", password: "pwd123").toJSON()
//        
//        LoginPostService.userlogin(params: param as! [String : AnyObject]) { (json) in
//            print(json)
//        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         print(cvc?.cint)
    }
}

extension ViewController: MFMailComposeViewControllerDelegate {
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["paul@hackingwithswift.com"])
            mail.setMessageBody("<p>You're so awesome!</p>", isHTML: true)
            
            present(mail, animated: true)
        } else {
            // show failure alert
            print(MFMailComposeViewController.canSendMail().description)
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        print(MFMailComposeResult.sent)
        
        if error == nil {
             controller.dismiss(animated: true)
        } else {
            print(error?.localizedDescription ?? "error in sending mail")
        }
       
    }

}

