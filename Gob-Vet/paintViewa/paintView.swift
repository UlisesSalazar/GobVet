//
//  paintView.swift
//  Gob-Vet
//
//  Created by Karim Ulises Salazar Garcia on 1/28/19.
//  Copyright © 2019 Karim Ulises Salazar Garcia. All rights reserved.
//

import UIKit

class Canavas: UIView{
    
    override func draw(_ rect: CGRect) {
        // drawing
        super.draw (rect)
        
        
        guard let context = UIGraphicsGetCurrentContext() else
        { return }
        
        //here my lines
        
        let startPoint = CGPoint(x: 0, y: 0)
        let  endPoint = CGPoint( x: 100, y: 100)
        
        
        context.move(to: startPoint)
        
        context.addLine(to: endPoint)
        
        context.strokePath()
        
    }
    
    //track the fire screen
    override func  touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: nil)else {return
            
        }
        print(point)
    }
}
class ViewController: UIViewController {
    
    let canavas = Canavas()
    
    override func viewDidLoad() {
     super .viewDidLoad()
        
        
        
        view.addSubview(canavas)
        canavas.backgroundColor = .white
        canavas.frame = view.frame
    }
    
}
