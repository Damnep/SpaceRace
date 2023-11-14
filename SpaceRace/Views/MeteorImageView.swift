//
//  MeteorImageView.swift
//  SpaceRace
//
//  Created by User on 12.11.23.
//

import UIKit

class MetorImageView: UIImageView {
    
    init() {
        super.init(image: .meteor)
        generateFrameSize()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func generateFrameSize() {
        let side = 20
        let scaleFactor = Double.random(in: 1...5)
        frame.size = CGSize(width: side, height: side)
        self.transform = CGAffineTransform(scaleX: scaleFactor, y: scaleFactor)
    }
    
    func generateMeteor(superViewFrame: CGRect)  {
        let x = CGFloat.random(in: superViewFrame.origin.x + 0.5 * frame.width...superViewFrame.width - 0.5 * frame.width)
        let y = 0.5 * frame.height
        center = CGPoint(x: x, y: y)
        addMeteorAnimation(superViewFrame: superViewFrame)
    }
    
    func addMeteorAnimation(superViewFrame: CGRect) {
        let meteorsSpeed = Double.random(in: 3...6)
        let animator = UIViewPropertyAnimator(duration: meteorsSpeed, curve: .linear) {
            let rotateAngle = CGFloat.random(in: -4 * .pi...4 * .pi)
            self.transform = self.transform.rotated(by: rotateAngle)
            self.center.y = superViewFrame.height + self.frame.height
        }
        animator.addCompletion { _ in
            self.removeFromSuperview()
        }
        animator.startAnimation()
    }
}
