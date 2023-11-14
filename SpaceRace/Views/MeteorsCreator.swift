//
//  MeteorsCreator.swift
//  SpaceRace
//
//  Created by User on 11.11.23.
//

import UIKit

class MeteorsCreator{
    let gameSceneView: UIView
    
    init(gameSceneView1: UIView) {
        self.gameSceneView = gameSceneView1
    }
    
    func createMeteor() {
        let meteor = MetorImageView()
        gameSceneView.addSubview(meteor)
        meteor.generateMeteor(superViewFrame: gameSceneView.frame)
        
        let delay = Double.random(in: 1...3)
        DispatchQueue.main.asyncAfter(deadline: .now() + delay){
            self.createMeteor()
        }
    }
}
