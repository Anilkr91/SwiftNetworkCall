//
//  ContainerViewController.swift
//  Swift3Buddy
//
//  Created by Anil Kumar on 3/3/17.
//  Copyright © 2017 Anil Kumar. All rights reserved.
//

import Foundation
import UIKit

class ContainerViewController: UIViewController {

    weak var pvc: ViewController?
    var cint = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print(pvc?.pint)
    }
    

}
