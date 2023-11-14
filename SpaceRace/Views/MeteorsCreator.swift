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
        let meteor = MetorImageView(gameSceneView1: gameSceneView)
        gameSceneView.addSubview(meteor)
        
        let delay = Double.random(in: 0...1)
        DispatchQueue.main.asyncAfter(deadline: .now() + delay){
            self.createMeteor()
        }
    }
}



// вращение метеоров в рандомных направлениях
// рандомная скорость движения метеоров
//
