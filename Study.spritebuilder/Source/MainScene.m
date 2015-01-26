#import "MainScene.h"

@implementation MainScene

- (void) didLoadFromCCB
{
    self.userInteractionEnabled = YES;
}

- (void) touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event
{
    CCLOG(@"touch");
    [[CCDirector sharedDirector] replaceScene:[CCBReader loadAsScene:@"TitleScene"]
                               withTransition:[CCTransition transitionFadeWithDuration:1.0]];
}

@end
