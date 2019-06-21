//
//  Show more.swift
//  
//
//  Created by JiaChen(: on 15/1/19.
//

import Foundation
import UIKit

extension UIView {
    
    // Usage: UIView.openView(UIView)
    func openView(_ view: UIView) {
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
    
    // Usage: UIView.closeView(UIView)
    func closeView(_ view: UIView) {
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
