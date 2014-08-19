//
//  RACSignal+Errors.m
//  EPSReactiveCocoaExtensions
//
//  Created by Peter Stuart on 7/15/14.
//  Copyright (c) 2014 Peter Stuart. All rights reserved.
//

#import "RACSignal+Errors.h"

@implementation RACSignal (Strings)

- (RACSignal *)eps_stringNotEmpty {
    return [self map:^NSNumber *(NSString *string) {
        return @(string.length > 0);
    }];
}

@end
