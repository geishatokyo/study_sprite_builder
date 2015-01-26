#import "MainScene.h"

@implementation MainScene
{
    __weak CCNode* _m;
}

- (void) didLoadFromCCB
{
    self.userInteractionEnabled = YES;
}

- (void) touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event
{
    CCLOG(@"touch");
    CGPoint touchPoint = [touch locationInNode:self];
    CGPoint currentPoint = [_m positionInPoints];
    CCLOG(@"touch = (%.2f,%.2f)",touchPoint.x,touchPoint.y);
    CCLOG(@"touch = (%.2f,%.2f)",currentPoint.x,currentPoint.y);

    // 100以上はJump扱いにする
    if(touchPoint.y > 100) {
        if(touchPoint.x > currentPoint.x + 20) {
            [[_m physicsBody] applyImpulse:CGPointMake(400, 400)];
        } else if(touchPoint.x < currentPoint.x - 20) {
            [[_m physicsBody] applyImpulse:CGPointMake(-400, 400)];
        } else {
            [[_m physicsBody] applyImpulse:CGPointMake(0, 400)];
        }
    } else {
        if(touchPoint.x > currentPoint.x + 20) {
            [[_m physicsBody] applyImpulse:CGPointMake(400, 0)];
        } else if(touchPoint.x < currentPoint.x - 20) {
            [[_m physicsBody] applyImpulse:CGPointMake(-400, 0)];
        }
    }
}

@end
