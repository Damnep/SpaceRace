//
//  StarShipView.swift
//  SpaceRace
//
//  Created by User on 7.11.23.
//

import UIKit

class StarShipView: UIView {
    var shipCenter:CGPoint?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        addGestures()
    }
    
    
    
    
    func setupUI() {
        let shipImageView = UIImageView(image: .ship)
        frame.size = CGSize(width: 75, height: 75)
        addSubview(shipImageView)
        shipImageView.frame = bounds
    }
    
    func addGestures() {
        let moover = UIPanGestureRecognizer(target: self, action: #selector(mooveShip))
        let shooter = UITapGestureRecognizer(target: self, action: #selector(shoot))
        addGestureRecognizer(moover)
        addGestureRecognizer(shooter)
    }
    
    @objc func mooveShip(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: superview)
        center.x = location.x
        shipCenter = location
        
    }
    
    @objc func shoot(_ sender: UITapGestureRecognizer) {
        let bulletImageView = BulletImageView()
        bulletImageView.center = center
        superview?.insertSubview(bulletImageView, belowSubview: self)
        UIView.animate(withDuration: 2, delay: 0, options: [.curveLinear]) {
            bulletImageView.frame.origin.y = self.superview!.bounds.minY - bulletImageView.bounds.maxY
            
        } completion: { _ in
            bulletImageView.removeFromSuperview()
        }
    }
    
    
}
