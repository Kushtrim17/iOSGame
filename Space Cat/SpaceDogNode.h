//
//  SpaceDogNode.h
//  Space Cat
//
//  Created by Kushtrim Abdiu on 8/8/16.
//  Copyright © 2016 Kushtrim Abdiu. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
typedef NS_ENUM(NSUInteger, SpaceDogType) {
    SpaceDogTypeA,
    SpaceDogTypeB
};

@interface SpaceDogNode : SKSpriteNode

+ (instancetype) spaceDogType:(SpaceDogType)type;

@end
