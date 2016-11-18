//
//  SpaceCatNode.m
//  Space Cat
//
//  Created by Kushtrim Abdiu on 8/7/16.
//  Copyright © 2016 Kushtrim Abdiu. All rights reserved.
//

#import "SpaceCatNode.h"

@interface SpaceCatNode()
@property (nonatomic) SKAction *tapAction;
@end

@implementation SpaceCatNode

+ (instancetype)spaceCatAtPosition:(CGPoint)position
{
    SpaceCatNode *spaceCat = [self spriteNodeWithImageNamed:@"spacecat_1"];
    spaceCat.anchorPoint = CGPointMake(0.5,0);
    spaceCat.position = position;
    spaceCat.name = @"SpaceCat";
    spaceCat.zPosition = 9;
    
    return spaceCat;
}

- (void) performTap
{
    [self runAction:self.tapAction];
}

- (SKAction *) tapAction {
    if (_tapAction != nil) {
        return _tapAction;
    }
    else {
        NSArray *textures = @[[SKTexture textureWithImageNamed:@"spacecat_2"],
                             [SKTexture textureWithImageNamed:@"spacecat_1"]];
        _tapAction = [SKAction animateWithTextures:textures timePerFrame:0.25];
        
        return _tapAction;
    }
}

@end
