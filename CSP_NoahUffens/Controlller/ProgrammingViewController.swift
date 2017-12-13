//
//  ProgrammingViewController.swift
//  CSP_NoahUffens
//
//  Created by Uffens, Noah on 12/13/17.
//  Copyright © 2017 Uffens, Noah. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgrammingViewController: UIViewController {

    override public func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)

        // Do any additional setup after loading the view.
    }

}
