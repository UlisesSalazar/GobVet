//
//  UIButtonControler.swift
//  Gob-Vet
//
//  Created by Karim Ulises Salazar Garcia on 1/16/19.
//  Copyright © 2019 Karim Ulises Salazar Garcia. All rights reserved.
//
//animation Button
import UIKit

class AnimationController: NSObject {

    private let animationDuration: Double
    private let animationType: AnimationType
      enum AnimationType {
        case present
        case dismiss
    }
    
    //uli init
    init(animationDuration: Double, AnimationType: AnimationType) {
        self.animationDuration = animationDuration
        self.animationType = AnimationType
    
}


}

extension AnimationController: UIViewControllerAnimatedTransitioning {

    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return TimeInterval (exactly: animationDuration) ?? 0
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        guard let toViewController = transitionContext.viewController(forKey: .to), let fromViewController = transitionContext.viewController(forKey: .from) else {
            transitionContext.completeTransition(false)
            return
        }
        
        switch animationType {
        case.present:
            transitionContext.containerView.addSubview(toViewController.view)
            presentAnimation(with: transitionContext, ViewToAnimate: toViewController.view)
        case .dismiss:
          //transitionContext.containerView.addSubview(toViewController.view)
             transitionContext.containerView.addSubview(fromViewController.view)
          dismissAnimation(with:transitionContext, viewToAnimate: fromViewController.view)
        }
        
        
}
    func dismissAnimation(with transsitionContext:UIViewControllerContextTransitioning, viewToAnimate: UIView){
        let duration = transitionDuration(using: transsitionContext)
        let scaleDOWN = CGAffineTransform(scaleX: 0.3, y: 0.3)
        let moveOut = CGAffineTransform(translationX: -viewToAnimate .frame.width, y:0 )
        UIView.animateKeyframes(withDuration: duration, delay: 0, options: .calculationModeLinear, animations: {
        
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.7, animations:{
            
                viewToAnimate .transform = scaleDOWN
                })
            UIView.addKeyframe(withRelativeStartTime: 3.0/duration, relativeDuration: 1.0
                
                , animations:{
                
                viewToAnimate .transform = scaleDOWN.concatenating(moveOut)
                    viewToAnimate.alpha = 0
            })
            
            
        }){ _ in
            
            transsitionContext.completeTransition(true)
        }
    }
    
    func presentAnimation(with transitionContext: UIViewControllerContextTransitioning, ViewToAnimate: UIView) {
        
        //ViewToAnimate.clipsToBounds = true
        ViewToAnimate.transform = CGAffineTransform(scaleX: 0, y: 0)
        
        let duration = transitionDuration(using: transitionContext)
        
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.80, initialSpringVelocity: 0.2, options: .curveEaseInOut, animations: {
            ViewToAnimate.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }) {_ in
            transitionContext.completeTransition(true)
        }
        
    }
}
