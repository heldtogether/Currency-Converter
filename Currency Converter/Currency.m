//
//  Currency.m
//  Currency Converter
//
//  Created by Josh Sephton on 28/09/2014.
//  Copyright (c) 2014 Springa Ltd. All rights reserved.
//

#import "Currency.h"

@interface Currency ()

@end

@implementation Currency

- (id)initWithCurrency:(NSString *)currency amount:(NSNumber *)amount
{
    self = [super init];
    if(self){
        self.currency = currency;
        self.amount = amount;
    }
    return self;
}

- (NSString *)description
{
    NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
    [nf setNumberStyle:NSNumberFormatterDecimalStyle];
    [nf setMinimumFractionDigits:2];
    [nf setMaximumFractionDigits:2];
    return [NSString stringWithFormat:@"%@ %@", [nf stringFromNumber:self.amount], self.currency];
}

@end
