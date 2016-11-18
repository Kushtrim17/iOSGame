//
//  HudNode.h
//  Space Cat
//
//  Created by Kushtrim Abdiu on 8/11/16.
//  Copyright © 2016 Kushtrim Abdiu. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface HudNode : SKNode

@property (nonatomic) NSInteger lives;
@property (nonatomic) NSInteger score;

+ (instancetype) hudAtPosition:(CGPoint)position inFrame:(CGRect)frame;
- (void)addPoints:(NSInteger)points;
-(BOOL)loseLive;


@end
