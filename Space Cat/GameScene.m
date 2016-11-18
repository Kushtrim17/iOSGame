//
//  GameScene.m
//  Space Cat
//
//  Created by Kushtrim Abdiu on 8/7/16.
//  Copyright (c) 2016 Kushtrim Abdiu. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    //sets the background color
    self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
    /* Setup your scene here */
    SKSpriteNode *greenNode = [SKSpriteNode spriteNodeWithColor:[SKColor greenColor] size:CGSizeMake(10, 100)];
    //after we have created the NODE we have to add it to the scene
    //the anchor point defines if we put an object on top weather it will be put in the center of this object
    //or any other position
    greenNode.anchorPoint = CGPointMake(0,0);
    greenNode.position = CGPointMake(10, 10);
    [self addChild:greenNode];
    SKSpriteNode *redNode = [SKSpriteNode spriteNodeWithColor:[SKColor redColor] size:CGSizeMake(100, 10)];
    redNode.position = CGPointMake(10,10);
    redNode.anchorPoint = CGPointMake(0,0);
    [self addChild:redNode];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.xScale = 0.5;
        sprite.yScale = 0.5;
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
