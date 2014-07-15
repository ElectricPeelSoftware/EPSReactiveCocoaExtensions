//
//  RACSignal+Errors.m
//  EPSReactiveCocoaExtensions
//
//  Created by Peter Stuart on 7/15/14.
//  Copyright (c) 2014 Peter Stuart. All rights reserved.
//

#import "RACSignal+Errors.h"

@implementation RACSignal (Errors)

- (RACTuple *)eps_splitValuesAndErrors {
    RACSignal *multicastSignal = [[self publish] autoconnect];
    
    RACSignal *values = [multicastSignal eps_onlyValues];
    RACSignal *errors = [multicastSignal eps_onlyErrors];
    
    return RACTuplePack(values, errors);
}

- (RACSignal *)eps_onlyValues {
    return [self catchTo:[RACSignal empty]];
}

- (RACSignal *)eps_onlyErrors {
    return [[self
        ignoreValues]
        catch:^RACSignal *(NSError *error) {
            return [RACSignal return:error];
        }];
}

@end
