//
//  ViewController.swift
//  Gob-Vet
//
//  Created by Karim Ulises Salazar Garcia on 1/9/19.
//  Copyright © 2019 Karim Ulises Salazar Garcia. All rights reserved.
//

import UIKit
import CoreGraphics

class LoginViewController: UIViewController {

   
    @IBOutlet  var siguiente: UIButton!
    
    
    
       //login text y pasworrd
    
    @IBOutlet weak var textFileClinico: UITextField!
    
    @IBOutlet weak var  paswoordClinico: UITextField!

    //let shapeLayer = CAShapeLayer ()
      override func viewDidLoad(){
    super.viewDidLoad()
    

    }
    //PASWOOR TEXTFILE
    @IBAction func loginButtonWasTouchedUpInside(sender: Any) {
        let username = textFileClinico.text
        let paswoord = paswoordClinico.text
        
        if Member.login(userName: username!, password: paswoord!) {
            performSegue(withIdentifier: "MemberList", sender: self)
            
        
        
    
    }
        
            // Do any additional setup after loading the view, typically from a nib.
            
            
            //let´s start by circle
       
            
         /*  let center = view.center
            
            //create my track
        let trackLayer = shapeLayer
            let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: -CGFloat.pi / 3, endAngle: 3 * CGFloat.pi, clockwise: true)
            trackLayer.path = circularPath.cgPath
            
            trackLayer.strokeColor = UIColor.lightGray.cgColor
            trackLayer.lineWidth = 10
            trackLayer.fillColor = UIColor.clear.cgColor
            trackLayer.lineCap = CAShapeLayerLineCap.round
            view.layer.addSublayer(trackLayer)
        
            //let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
  shapeLayer.path = circularPath.cgPath
            
            shapeLayer.strokeColor = UIColor.yellow.cgColor
            shapeLayer.lineWidth = 10
            shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = CAShapeLayerLineCap.round
            shapeLayer.strokeEnd = 0
            
            view.layer.addSublayer(shapeLayer)
            view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
            
            
        }
    
    @objc private func handleTap () {
        
    print(" stroke")
        
        
            let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
            basicAnimation.toValue =  1
            basicAnimation.duration = 2
        basicAnimation.fillMode = CAMediaTimingFillMode.forwards
            basicAnimation.isRemovedOnCompletion = false
       
 
 shapeLayer.add(basicAnimation, forKey: "anud")
 
   */
        
 }

}
