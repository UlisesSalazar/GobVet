//
//  ViewController.swift
//  Gob-Vet
//
//  Created by Karim Ulises Salazar Garcia on 1/9/19.
//  Copyright © 2019 Karim Ulises Salazar Garcia. All rights reserved.
//

import UIKit
import CoreGraphics

//adelay function
func delay(_ seconds: Double, completion: @escaping ()->Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: completion)
}


class LoginViewController: UIViewController {

    
    //animationLogin
    @IBOutlet var Clinico: UIButton!
    @IBOutlet var Hospital: UIButton!
    @IBOutlet var Alumno: UIButton!
    
    @IBOutlet var Usuario: UILabel!
    @IBOutlet var Contraseña: UILabel!
    
    @IBOutlet var herradura1: UIImageView!
    @IBOutlet var caballo: UIImageView!
 

    //login text y pasworrd
    
    @IBOutlet weak var textFileClinico: UITextField!
    
    @IBOutlet weak var  paswoordClinico: UITextField!
    
    //let shapeLayer = CAShapeLayer ()
    override func viewDidLoad(){
        super.viewDidLoad()
    
    

    // animationLogin
    
    let spinner = UIActivityIndicatorView(style: .whiteLarge)
    let status = UIImageView(image: UIImage(named: "banner"))
    let label = UILabel()
    let messages = ["Connecting ...", "Authorizing ...", "Sending credentials ...", "Failed"]
    
    var statusPosition = CGPoint.zero
    
        Clinico.layer.cornerRadius = 8.0
    Clinico.layer.masksToBounds = true
    
    spinner.frame = CGRect( x: -20.0, y: 6.0, width: 20.0, height: 20.0)
    spinner.startAnimating()
    spinner.alpha = 0.0
        

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        Usuario.center.x = view.bounds.width
        Contraseña.center.x = view.bounds.width
        Clinico.center.x = view.bounds.width
        Hospital.center.x = view.bounds.width
        Alumno.center.x = view.bounds.width
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [ ], animations: {
            self.Usuario.center.x += self.view.bounds.width
            
        },
                       completion:nil
        )
        
        
        UIView.animate(withDuration: 0.8, delay: 0.5, options: [ ],
                       animations: {
                        self.Contraseña.center.x += self.view.bounds.width
        },
                       
                       completion: nil
        )
        UIView.animate(withDuration: 0.9, delay: 0.6, options: [ ], animations: {
            self.herradura1.center.x += self.view.bounds.width
        },
                       completion: nil
        )
        
        UIView.animate(withDuration: 0.3, delay:0.6, options: [ ],
                       animations: {
                        
                        self.caballo.center.x += self.view.bounds.width
        },
                       completion: nil
            
        )
        
        
    }
    
    @IBAction func login() {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let nextField = (textField === Usuario) ? Contraseña : Usuario
        nextField?.becomeFirstResponder()
        return true
    }
    

    


        
    
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
        

