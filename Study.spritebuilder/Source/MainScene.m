#import "MainScene.h"

#import "Player.h"

@implementation MainScene
{
    __weak Player* _m;
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
            [_m jump:1];
        } else if(touchPoint.x < currentPoint.x - 20) {
            [_m jump:-1];
        } else {
            [_m jump:0];
        }
    } else {
        if(touchPoint.x > currentPoint.x + 20) {
            [_m walk:1];
        } else if(touchPoint.x < currentPoint.x - 20) {
            [_m walk:-1];
        }
    }
}

@end
