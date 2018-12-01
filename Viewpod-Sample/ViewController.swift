//
//  ViewController.swift
//  Viewpod-Sample
//
//  Created by Win Than Htike on 11/24/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

    @IBOutlet weak var viewTest: ViewOne!
    @IBOutlet weak var viewTest2: ViewOne!
    
    var viewOne : ViewOne = {
        let vo = ViewOne(frame: CGRect.zero)
        return vo
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewTest.isHidden = true
        
        viewTest.bindData(message: "Hello View One")
        
        viewTest2.bindData(message: "Hello View Two")
        
    }


}
