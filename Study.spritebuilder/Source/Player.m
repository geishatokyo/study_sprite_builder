//
//  Player.m
//  Study
//
//  Created by OKAYA YOHEI on 2015/01/26.
//  Copyright (c) 2015年 Apportable. All rights reserved.
//

#import "Player.h"

@implementation Player
{
    int _direction;
}

- (void) jump:(int) direction
{
    _direction = direction;
    [[self animationManager] runAnimationsForSequenceNamed:@"jump"];
}

- (void) shot
{
    if(_direction > 0) {
        [[self physicsBody] applyImpulse:CGPointMake(400, 400)];
    } else if(_direction < 0) {
        [[self physicsBody] applyImpulse:CGPointMake(-400, 400)];
    } else {
        [[self physicsBody] applyImpulse:CGPointMake(0, 400)];
    }
}

- (void) walk:(int) direction
{
    _direction = direction;
    if(_direction > 0) {
        [[self physicsBody] applyImpulse:CGPointMake(400, 0)];
    } else if(_direction < 0) {
        [[self physicsBody] applyImpulse:CGPointMake(-400, 0)];
    } else {
        [[self physicsBody] applyImpulse:CGPointMake(0, 0)];
    }
}

@end

