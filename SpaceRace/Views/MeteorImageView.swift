//
//  MeteorImageView.swift
//  SpaceRace
//
//  Created by User on 12.11.23.
//

import UIKit

class MetorImageView: UIImageView {
    var generatedSize:Int!
    var frameSize:Double!
    let gameSceneView: UIView
    var width: CGFloat! // пришлось вывести глобально чтобы впихнуть в генератор центра (заскаленная ширина)
    
    init(gameSceneView1: UIView) {
        self.gameSceneView = gameSceneView1
        super.init(image: .meteor)
        generateFrameSize()
        generateMeteor(superview: gameSceneView1, width: width)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func generateFrameSize() {
        let side = 20
        let scaleFactor = Double.random(in: 1...5)
        let rotateAngle = CGFloat.random(in: 0...2 * .pi)
        frame.size = CGSize(width: side, height: side)
        self.transform = .identity.rotated(by: rotateAngle).scaledBy(x: scaleFactor, y: scaleFactor)
        width = frame.width
    }
    
    func generateMeteor(superview:UIView, width: CGFloat)  {
        let x = CGFloat.random(in: superview.bounds.origin.x + 0.5 * width...superview.bounds.width - 0.5 * width)
        let y = 0.5 * frame.height//---- после ввода анимации
        center = CGPoint(x: x, y: y)
        let meteorsSpeed = Double.random(in: 1...3)
        let meteorsanimator = UIViewPropertyAnimator.runningPropertyAnimator(withDuration: meteorsSpeed, delay: 0, options: [.curveLinear]) {
            self.center.y = 1000
        } completion: { _ in
            self.removeFromSuperview()
        }

        
    }
    
}
