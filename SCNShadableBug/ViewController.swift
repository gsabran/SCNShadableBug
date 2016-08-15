//
//  ViewController.swift
//  SCNShadableBug
//
//  Created by Guillaume Sabran on 8/14/16.
//  Copyright © 2016 Guillaume Sabran. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {
    var sceneController: SceneController!

    @IBOutlet weak var sceneKitView: SCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sceneController = SceneController(view: sceneKitView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

