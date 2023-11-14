//
//  Background.swift
//  SpaceRace
//
//  Created by User on 7.11.23.
//

import UIKit

class BackgroundAnimator {
    
    var step: CGFloat = 1
    let view: UIView
    lazy var firstBGView = getImageView(originY: view.frame.origin.y)
    lazy var secondBGView = getImageView(originY: view.frame.origin.y - view.frame.height)
    var displayLink: CADisplayLink!
    
    init(view: UIView) {
        self.view = view
    }
    
    func startAnimation() {
        displayLink = CADisplayLink(target: self, selector: #selector(update))
        displayLink.add(to: .current, forMode: .common)
    }
    
    @objc func update() {
        if !firstBGView.frame.intersects(self.view.frame) {
            firstBGView.frame.origin.y = secondBGView.frame.origin.y - firstBGView.frame.height
        }
        
        if !secondBGView.frame.intersects(self.view.frame) {
            secondBGView.frame.origin.y = firstBGView.frame.origin.y - secondBGView.frame.height
        }
        
        firstBGView.center.y = firstBGView.center.y + self.step
        secondBGView.center.y = secondBGView.center.y + self.step
    }
    
    func getImageView(originY: CGFloat) -> UIImageView {
        let imageView = UIImageView(image: .background)
        imageView.frame.size = view.frame.size
        imageView.frame.origin = CGPoint(x: 0, y: originY)
        imageView.contentMode = .scaleAspectFill
        imageView.isUserInteractionEnabled = true
        view.insertSubview(imageView, at: 0)
        return imageView
    }
}

