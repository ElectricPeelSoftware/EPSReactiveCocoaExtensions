//
//  RACSignal+Errors.h
//  EPSReactiveCocoaExtensions
//
//  Created by Peter Stuart on 7/15/14.
//  Copyright (c) 2014 Peter Stuart. All rights reserved.
//

#import "RACSignal.h"

#import <ReactiveCocoa/ReactiveCocoa.h>

@interface RACSignal (Strings)

/// Maps a signal of strings into a signal of numbers. Empty strings are transformed into NO, and non-empty strings into YES.
- (RACSignal *)eps_stringNotEmpty;

@end
