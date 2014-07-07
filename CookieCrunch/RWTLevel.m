//
//  RWTLevel.m
//  CookieCrunch
//
//  Created by Jesus Magana on 7/7/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "RWTLevel.h"

@implementation RWTLevel {
    RWTCookie *_cookies[NumColumns][NumRows];
}

- (RWTCookie *)cookieAtColumn:(NSInteger)column row:(NSInteger)row {
    NSAssert1(column >= 0 && column < NumColumns, @"Invalid column: %ld", (long)column);
    NSAssert1(row >= 0 && row < NumRows, @"Invalid row: %ld", (long)row);
    
    return _cookies[column][row];
}

- (NSSet *)shuffle {
    return [self createInitialCookies];
}

- (NSSet *)createInitialCookies {
    NSMutableSet *set = [NSMutableSet set];
    
    // 1
    for (NSInteger row = 0; row < NumRows; row++) {
        for (NSInteger column = 0; column < NumColumns; column++) {
            
            // 2
            NSUInteger cookieType = arc4random_uniform(NumCookieTypes) + 1;
            
            // 3
            RWTCookie *cookie = [self createCookieAtColumn:column row:row withType:cookieType];
            
            // 4
            [set addObject:cookie];
        }
    }
    return set;
}

- (RWTCookie *)createCookieAtColumn:(NSInteger)column row:(NSInteger)row withType:(NSUInteger)cookieType {
    RWTCookie *cookie = [[RWTCookie alloc] init];
    cookie.cookieType = cookieType;
    cookie.column = column;
    cookie.row = row;
    _cookies[column][row] = cookie;
    return cookie;
}

@end
