//
//  GameSceneView.swift
//  SpaceRace
//
//  Created by User on 7.11.23.
//

import UIKit

class GameSceneView: UIView {
    
    let shipView = StarShipView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    func setupUI() {
        addSubview(shipView)
        shipView.center = CGPoint(x: center.x, y: bounds.maxY * 0.9)
    }
}
