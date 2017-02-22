//
//  LoginViewController.swift
//  TravisTesting
//
//  Created by Trong_iOS on 2/20/17.
//  Copyright © 2017 MroomSoftware. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    var userPresenter : UserPresenter?
    
    // MARK:- view life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        hookPresenter()
        createUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:- Obj
    
    func hookPresenter() {
        
    }
    
    
    // MARK:- UI
    
    func createUI() {
        
    }
    
    // MARK:- Selector methods
    
    @IBAction func btnPingTouched(_ sender: UIButton) {
        
    }
}

extension LoginViewController : UserView {
    
}
