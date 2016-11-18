//
//  GameOverNode.h
//  Space Cat
//
//  Created by Kushtrim Abdiu on 8/13/16.
//  Copyright © 2016 Kushtrim Abdiu. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GameOverNode : SKNode

+(instancetype)gameOverAtPosition:(CGPoint)position;
-(void)performAnimation;

@end
