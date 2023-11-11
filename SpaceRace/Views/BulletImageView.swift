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
        frame.size = CGSize(width: 20, height: 20)
//        self.animation - метод для анимации ImageView (images, durations, repeats)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("deleted")
    }

   
}
