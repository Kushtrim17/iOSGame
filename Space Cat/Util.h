//
//  Util.h
//  Space Cat
//
//  Created by Kushtrim Abdiu on 8/7/16.
//  Copyright © 2016 Kushtrim Abdiu. All rights reserved.
//

#import <Foundation/Foundation.h>

static const int ProjectileSpeed = 400;
static const int SpaceDogMinSpeed = -100;
static const int SpaceDogMaxSpeed = - 50;
static const int MaxLives = 4;
static const int PointsPerHit = 100;
//CONTROL THE MUSIC
static const BOOL ALL_MUSIC         =   NO;
//
static const BOOL CRUSH_SOUNDS      =   YES;
static const BOOL EXPLOSION_SOUNDS  =   YES;
static const BOOL SHOOTING_SOUNDS  =   YES;
static const BOOL START_MUSIC       =   YES;
static const BOOL IN_GAME_MUSIC     =   YES;
static const BOOL GAME_OVER_MUSIC   =   YES;

typedef NS_OPTIONS(uint32_t, CollisionCategory)
{
    CollisionCategoryEnemy =      1 << 0,  //0000
    CollisionCategoryProjectile = 1 << 1,  //0010
    CollisionCategoryDebris =     1 << 2,  //0100
    CollisionCategoryGround =     1 << 3   //1000
};

@interface Util : NSObject

+(NSInteger)randomWithMin:(NSInteger)min max:(NSInteger)max;

@end
