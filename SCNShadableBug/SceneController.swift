//
//  SceneController.swift
//  SCNShadableBug
//
//  Created by Guillaume Sabran on 8/14/16.
//  Copyright © 2016 Guillaume Sabran. All rights reserved.
//

import UIKit
import SceneKit
import SpriteKit

class SceneController: SCNScene {
    private weak var sphereNode: SKVideoNode?
    
    private let cameraNode = SCNNode()
    private let sphereGeometry = SCNSphere(radius: 2)
    
    convenience init(view: SCNView) {
        self.init()
        
        let image = UIImage(named: "test")!
        // Main node & material setup.
        sphereGeometry.firstMaterial?.diffuse.contents = image
        sphereGeometry.firstMaterial?.isDoubleSided = true
        
        // use custom shaders
        sphereGeometry.firstMaterial?.shaderModifiers = [
            SCNShaderModifierEntryPointSurface: "_surface.diffuse = texture2D(u_diffuseTexture, _surface.diffuseTexcoord);",
        ]
        
        let node = SCNNode(geometry: sphereGeometry)
        node.position = SCNVector3(x: 0, y: 0, z: -10)
        rootNode.addChildNode(node)

        view.scene = self
        cameraNode.camera = SCNCamera()
        
        cameraNode.camera?.xFov = 90.0
        cameraNode.camera?.yFov = 110.0
        cameraNode.position = SCNVector3Zero
        rootNode.addChildNode(cameraNode)
    }
}
