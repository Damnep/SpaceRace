//
//  Background.swift
//  SpaceRace
//
//  Created by User on 7.11.23.
//

import UIKit

class BackgroundAnimator {
    
    var timer : Timer?
    var step: CGFloat = 1
    let view: UIView
    
    init(view: UIView) {
        self.view = view
    }
    
    func createaBGAnimator() {
        let firstBGView = getImageView()
        firstBGView.frame.origin = view.frame.origin
        
        let secondBGView = getImageView()
        secondBGView.frame.origin = CGPoint(x: view.frame.origin.x, y: view.frame.origin.y - view.frame.height)
   
        timer = Timer.scheduledTimer(withTimeInterval: 1/30, repeats: true) { _ in
            if !firstBGView.frame.intersects(self.view.frame) {
                firstBGView.frame.origin.y = secondBGView.frame.origin.y - firstBGView.frame.height
            }
            
            if !secondBGView.frame.intersects(self.view.frame) {
                secondBGView.frame.origin.y = firstBGView.frame.origin.y - secondBGView.frame.height
            }
            
            firstBGView.center.y = firstBGView.center.y + self.step
            secondBGView.center.y = secondBGView.center.y + self.step
        }
    }
    
    func getImageView() -> UIImageView {
        let imageView = UIImageView(image: .background)
        imageView.frame.size = view.frame.size
        imageView.contentMode = .scaleAspectFill
        imageView.isUserInteractionEnabled = true
        view.insertSubview(imageView, at: 0)
        return imageView
    }
}

