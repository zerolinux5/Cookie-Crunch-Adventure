//
//  RWTMyScene.m
//  CookieCrunch
//
//  Created by Jesus Magana on 7/6/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "RWTMyScene.h"

@implementation RWTMyScene

- (id)initWithSize:(CGSize)size {
    if ((self = [super initWithSize:size])) {
        
        self.anchorPoint = CGPointMake(0.5, 0.5);
        
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"Background"];
        [self addChild:background];
    }
    return self;
}

@end
