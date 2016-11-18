//
//  Util.m
//  Space Cat
//
//  Created by Kushtrim Abdiu on 8/7/16.
//  Copyright © 2016 Kushtrim Abdiu. All rights reserved.
//

#import "Util.h"

@implementation Util

+(NSInteger)randomWithMin:(NSInteger)min max:(NSInteger)max
{
    return arc4random() % (max - min) + min;
}

@end
