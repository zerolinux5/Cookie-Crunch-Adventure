//
//  RWTLevel.h
//  CookieCrunch
//
//  Created by Jesus Magana on 7/7/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "RWTCookie.h"

static const NSInteger NumColumns = 9;
static const NSInteger NumRows = 9;

@interface RWTLevel : NSObject

- (NSSet *)shuffle;

- (RWTCookie *)cookieAtColumn:(NSInteger)column row:(NSInteger)row;

@end