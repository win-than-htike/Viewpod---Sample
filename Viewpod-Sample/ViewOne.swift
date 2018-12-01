//
//  ViewOne.swift
//  Viewpod-Sample
//
//  Created by Win Than Htike on 11/24/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class ViewOne: UIView {
    let kCONTENT_XIB_NAME = "ViewOne"
    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet var containerView: UIView!
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        Bundle.main.loadNibNamed(kCONTENT_XIB_NAME, owner: self, options: nil)
        self.addSubview(containerView)
    }
    
    func bindData(message : String) {
        title.text = message
        
        let onTapTitle = UITapGestureRecognizer(target: self, action: #selector(onClickTitle))
        title.isUserInteractionEnabled = true
        title.addGestureRecognizer(onTapTitle)
        
        
    }
    
    @objc func onClickTitle() {
        print("Hello")
    }
    
    func hideView() {
        
    }
    
    func showView() {
        
    }
}
