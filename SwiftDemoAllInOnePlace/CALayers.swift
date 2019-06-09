//
//  CALayers.swift
//  SwiftDemoAllInOnePlace
//
//  Created by 冯奕琦 on 2019/6/9.
//  Copyright © 2019 冯奕琦. All rights reserved.
//

import Foundation
import UIKit

//CALayer为UIView绘制图像,动画的类

class DemoCALayer {
    
    static func giveRound(view:UIView) {
        view.layer.cornerRadius = 6
    }
    
    static func giveShadow(view:UIView){
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOpacity = 0.4
        view.layer.masksToBounds = false
    }
    
    static func addACircleLayer(view:UIView){
        let layer = CALayer()
        layer.bounds.size = CGSize(width: 30, height: 30)
        layer.position = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        layer.borderColor = UIColor.red.cgColor
        layer.borderWidth = 5
        layer.cornerRadius = 15//边长的一半 会刚好展示为一个圆
        view.layer.addSublayer(layer)
    }
    
    
}
