//
//  RWTMyScene.h
//  CookieCrunch
//

//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

@import SpriteKit;

@class RWTLevel;

@class RWTSwap;

@interface RWTMyScene : SKScene

@property (strong, nonatomic) RWTLevel *level;

@property (copy, nonatomic) void (^swipeHandler)(RWTSwap *swap);

- (void)addSpritesForCookies:(NSSet *)cookies;

- (void)addTiles;

- (void)animateSwap:(RWTSwap *)swap completion:(dispatch_block_t)completion;

- (void)animateInvalidSwap:(RWTSwap *)swap completion:(dispatch_block_t)completion;

- (void)animateMatchedCookies:(NSSet *)chains completion:(dispatch_block_t)completion;

- (void)animateFallingCookies:(NSArray *)columns completion:(dispatch_block_t)completion;

@end