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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animator.createaBGAnimator()
    }
}
