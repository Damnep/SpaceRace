//
//  StarShipView.swift
//  SpaceRace
//
//  Created by User on 7.11.23.
//

import UIKit

class StarShipView: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupUI()
    }
    
    func setupUI() {
        frame.size = CGSize(width: 100, height: 100)
        
        let shipImageView = UIImageView(image: .ship)
        addSubview(shipImageView)
        shipImageView.frame = bounds
    }
}
