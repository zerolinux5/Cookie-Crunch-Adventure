//
//  RWTChain.h
//  CookieCrunch
//
//  Created by Jesus Magana on 7/8/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

@class RWTCookie;

typedef NS_ENUM(NSUInteger, ChainType) {
    ChainTypeHorizontal,
    ChainTypeVertical,
};

@interface RWTChain : NSObject

@property (strong, nonatomic, readonly) NSArray *cookies;

@property (assign, nonatomic) ChainType chainType;

- (void)addCookie:(RWTCookie *)cookie;

@end
