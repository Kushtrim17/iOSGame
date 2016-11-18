//
//  TitleScene.m
//  Space Cat
//
//  Created by Kushtrim Abdiu on 8/7/16.
//  Copyright © 2016 Kushtrim Abdiu. All rights reserved.
//

#import "TitleScene.h"
#import "GamePlayScene.h"
#import <AVFoundation/AVFoundation.h>
#import "Util.h"

@interface TitleScene ()

@property (nonatomic)SKAction *pressStartSFX;
@property (nonatomic)AVAudioPlayer *backgroundMusic;

@end

@implementation TitleScene

-(void)didMoveToView:(SKView *)view
{
    SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"splash_1"];
    //position the background in the center of the screen
    background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    //add the background to the scene
    [self addChild:background];
    self.pressStartSFX = [SKAction playSoundFileNamed:@"PressStart.caf" waitForCompletion:NO];
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"StartScreen" withExtension:@"mp3"];
    
    self.backgroundMusic = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    self.backgroundMusic.numberOfLoops = -1;
    [self.backgroundMusic prepareToPlay];
    
    if (ALL_MUSIC == YES && START_MUSIC == YES) {
        [self.backgroundMusic play];
    }
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (ALL_MUSIC == YES) {
        [self runAction:_pressStartSFX];
    }
    
    [self.backgroundMusic stop];
    GamePlayScene *gamePlayScene = [GamePlayScene sceneWithSize:self.frame.size];
    SKTransition *transition = [SKTransition fadeWithDuration:1.0];
    [self.view presentScene:gamePlayScene transition:transition];
}

@end
