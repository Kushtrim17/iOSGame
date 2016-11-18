//
//  MachineNode.m
//  Space Cat
//
//  Created by Kushtrim Abdiu on 8/7/16.
//  Copyright © 2016 Kushtrim Abdiu. All rights reserved.
//

#import "MachineNode.h"

@implementation MachineNode

+ (instancetype)machineAtPosition:(CGPoint)position
{
    //place the machine
    MachineNode *machine = [self spriteNodeWithImageNamed:@"machine_1"];
    machine.anchorPoint = CGPointMake(0.5,0);
    machine.position = position;
    machine.name = @"Machine";
    machine.zPosition = 8;
    
    //to animate between these two images
    NSArray *textures = @[[SKTexture textureWithImageNamed:@"machine_1"],
                          [SKTexture textureWithImageNamed:@"machine_2"]];
    SKAction *machineAnimation = [SKAction animateWithTextures:textures timePerFrame:0.1];
    SKAction *machineRepeat = [SKAction repeatActionForever:machineAnimation];
    [machine runAction:machineRepeat];
    
    return machine;
}

@end
