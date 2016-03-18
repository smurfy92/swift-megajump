//
//  PlatformNode.swift
//  megajump
//
//  Created by Smurfy on 09/03/16.
//  Copyright © 2016 Smurfy. All rights reserved.
//

import SpriteKit

class PlatformNode: GenericNode {
    
    var platformType:PlatformType!
    
    override func collisionWithPlayer(player: SKNode) -> Bool {
        if player.physicsBody?.velocity.dy < 0 {
            player.physicsBody?.velocity = CGVector(dx: player.physicsBody!.velocity.dx, dy: 250)
            
            if platformType == PlatformType.breakableBrick {
                self.removeFromParent()
            }
        }
        
        return false
    }

}
