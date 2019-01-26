//
//  viewCircle.swift
//  Gob-Vet
//
//  Created by Karim Ulises Salazar Garcia on 1/12/19.
//  Copyright © 2019 Karim Ulises Salazar Garcia. All rights reserved.
//

import UIKit
class ViewController: UIViewController{
    
    let shapeLayer = CAShapeLayer ()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //let´s start by circle
        
        
        let center = view.center
        
        //create my track
        let trackLayer = CAShapeLayer ()
        let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        trackLayer.path = circularPath.cgPath
        
        trackLayer.strokeColor = UIColor.lightGray.cgColor
        trackLayer.lineWidth = 10
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = CAShapeLayerLineCap.round
        view.layer.addSublayer(trackLayer)
        
        
        
        //let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        shapeLayer.path = circularPath.cgPath
        
        shapeLayer.strokeColor = UIColor.blue.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        shapeLayer.strokeEnd = 0
        
        view.layer.addSublayer(shapeLayer)
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
        
        
    }
    
    fileprivate func animateCircle() {
        let basicAnimation = CABasicAnimation ( keyPath: "strokeEnd")
        basicAnimation.toValue =  2
        basicAnimation.duration = 3
        basicAnimation.fillMode = CAMediaTimingFillMode.forwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapeLayer.add(basicAnimation, forKey: "urSoBasic")
    }
    
    @objc private func handleTap () {
        print ("Attempting to animate stroke")
        
        
        animateCircle()
    }
}

