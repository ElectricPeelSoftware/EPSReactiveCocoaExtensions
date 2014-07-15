//
//  RACSignal+Errors.h
//  EPSReactiveCocoaExtensions
//
//  Created by Peter Stuart on 7/15/14.
//  Copyright (c) 2014 Peter Stuart. All rights reserved.
//

#import "RACSignal.h"

#import <ReactiveCocoa/ReactiveCocoa.h>

@interface RACSignal (Errors)

- (RACTuple *)eps_splitValuesAndErrors;

- (RACSignal *)eps_onlyValues;

- (RACSignal *)eps_onlyErrors;

@end
