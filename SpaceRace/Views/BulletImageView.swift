//
//  BulletView.swift
//  SpaceRace
//
//  Created by User on 10.11.23.
//

import UIKit

class BulletImageView: UIImageView {
    
    init() {
        super.init(image: .bullet)
        
        frame.size = CGSize(width: 10, height: 30)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
