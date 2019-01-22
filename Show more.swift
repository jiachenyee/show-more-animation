//
//  Show more.swift
//  
//
//  Created by JiaChen(: on 15/1/19.
//

import Foundation
import UIKit

extension UIView {
    
    // Usage: UIView.openSecondaryView(view: UIView)
    func openSecondaryView(view: UIView) {
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
            view.transform = CGAffineTransform(translationX: 1, y: 100)
        }) { (_) in
            view.superview?.bringSubviewToFront(view)
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                view.transform = CGAffineTransform.identity
            }, completion: { (_) in
                
            })
        }
    }
    
    // Usage: UIView.closeSecondaryView(view: UIView)
    func closeSecondaryView(view: UIView) {
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
            view.transform = CGAffineTransform(translationX: 1, y: 100)
        }) { (_) in
            self.superview?.bringSubviewToFront(view)
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                view.transform = CGAffineTransform.identity
            }, completion: { (_) in
                
            })
        }
    }
    
}
