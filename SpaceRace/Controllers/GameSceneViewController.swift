//
//  GameSceneViewController.swift
//  SpaceRace
//
//  Created by User on 7.11.23.
//

import UIKit

class GameSceneViewController: UIViewController {
    
    @IBOutlet var gameSceneView: GameSceneView!
    lazy var  animator = BackgroundAnimator(view: gameSceneView)
    lazy var meteorCreator = MeteorsCreator(gameSceneView1: gameSceneView)
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animator.createaBGAnimator()
        meteorCreator.createMeteor()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
