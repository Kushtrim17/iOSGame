//
//  GameViewController.m
//  Space Cat
//
//  Created by Kushtrim Abdiu on 8/7/16.
//  Copyright (c) 2016 Kushtrim Abdiu. All rights reserved.
//

#import "GameViewController.h"
#import "TitleScene.h"

@implementation GameViewController

-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = NO;
    skView.showsNodeCount = NO;
    /* Sprite Kit applies additional optimizations to improve rendering performance */
    skView.ignoresSiblingOrder = YES;
    
    // Create and configure the scene.
    TitleScene *scene = [TitleScene nodeWithFileNamed:@"GameScene"];
    scene.scaleMode = SKSceneScaleModeResizeFill;
    
    // Present the scene.
    [skView presentScene:scene];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
