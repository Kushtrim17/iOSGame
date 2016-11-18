//
//  SpaceCatNode.h
//  Space Cat
//
//  Created by Kushtrim Abdiu on 8/7/16.
//  Copyright © 2016 Kushtrim Abdiu. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SpaceCatNode : SKSpriteNode

+ (instancetype)spaceCatAtPosition:(CGPoint)position;
- (void) performTap;

@end
