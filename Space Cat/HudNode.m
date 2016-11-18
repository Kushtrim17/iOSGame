//
//  HudNode.m
//  Space Cat
//
//  Created by Kushtrim Abdiu on 8/11/16.
//  Copyright © 2016 Kushtrim Abdiu. All rights reserved.
//

#import "HudNode.h"
#import "Util.h"

@implementation HudNode

+(instancetype) hudAtPosition:(CGPoint)position inFrame:(CGRect)frame
{
    HudNode *hud = [self node];
    hud.position = position;
    hud.zPosition = 10;
    hud.name = @"HUD"; 
    
    SKSpriteNode *catHead = [SKSpriteNode spriteNodeWithImageNamed:@"HUD_cat_1"];
    catHead.position = CGPointMake(30, -10);
    [hud addChild:catHead];
    
    hud.lives = MaxLives;
    
    SKSpriteNode *lastLifeBar;
    for (int i = 1; i <= hud.lives; i++) {
        
        SKSpriteNode *lifeBar = [SKSpriteNode spriteNodeWithImageNamed:@"HUD_life_1"];
        lifeBar.name = [NSString stringWithFormat:@"Life%d",i];
        
        if (lastLifeBar == nil) {
            lifeBar.position = CGPointMake(catHead.position.x + 30, catHead.position.y);
        }
        else {
            lifeBar.position = CGPointMake(lastLifeBar.position.x + 10, lastLifeBar.position.y);
        }
        
        lastLifeBar = lifeBar;
        [hud addChild:lifeBar];
    }
    
    SKLabelNode *scoreLabel = [SKLabelNode labelNodeWithFontNamed:@"Futura-CondensedExtraBold"];
    scoreLabel.name = @"Score";
    scoreLabel.text = @"0";
    scoreLabel.fontSize = 24;
    scoreLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeRight;
    //scoreLabel.position = CGPointMake(frame.size.width-20,-10);
    scoreLabel.position = CGPointMake(frame.size.width - 100, catHead.position.y - 10);
    
    [hud addChild:scoreLabel];
    
    return hud;
}

- (void)addPoints:(NSInteger)points
{
    self.score += points;
    SKLabelNode *scoreLabel = (SKLabelNode*)[self childNodeWithName:@"Score"];
    scoreLabel.text = [NSString stringWithFormat:@"%ld",(long)self.score];
}

-(BOOL)loseLive
{
    if (self.lives > 0) {
        NSLog(@"Nr of lives :: %ld",(long)self.lives);
        NSString *lifeNodeName = [NSString stringWithFormat:@"Life%ld",(long)self.lives];
        SKNode *lifeToRemove = [self childNodeWithName:lifeNodeName];
        [lifeToRemove removeFromParent];
        
        self.lives --;
    }
    
    return self.lives == 0;
}

@end
