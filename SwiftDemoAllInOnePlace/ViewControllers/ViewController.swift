//
//  ViewController.swift
//  SwiftDemoAllInOnePlace
//
//  Created by 冯奕琦 on 2019/6/6.
//  Copyright © 2019 冯奕琦. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        DemoCALayer.giveRound(view: testView)
        DemoCALayer.giveShadow(view: testView)
        DemoCALayer.addACircleLayer(view: testView)
    }


}

