//
//  TitleScene.m
//  Study
//
//  Created by OKAYA YOHEI on 2015/01/26.
//  Copyright (c) 2015年 Apportable. All rights reserved.
//

#import "TitleScene.h"

@implementation TitleScene

- (void) didLoadFromCCB
{
    self.userInteractionEnabled = YES;
}

- (void) touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event
{
    CCLOG(@"touch");
    [[CCDirector sharedDirector] replaceScene:[CCBReader loadAsScene:@"MainScene"]
                               withTransition:[CCTransition transitionFadeWithDuration:1.0]];
}

@end
