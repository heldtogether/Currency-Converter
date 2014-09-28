//
//  CurrencyConverter.m
//  Currency Converter
//
//  Created by Josh Sephton on 28/09/2014.
//  Copyright (c) 2014 Springa Ltd. All rights reserved.
//

#import "CurrencyConverter.h"

@interface CurrencyConverter ()

@property (nonatomic, strong) id<iRatesRepository> ratesRepository;

@end

@implementation CurrencyConverter

- (id)initWithRatesRepository:(id<iRatesRepository>)repo
{
    self = [super init];
    if(self){
        self.ratesRepository = repo;
    }
    return self;
}

- (Currency *)convert:(Currency *)original to:(NSString *)newCurrency
{
    NSDictionary *allRates = [self.ratesRepository getRates];
    NSDictionary *newCurrencyRates = [allRates objectForKey:newCurrency];
    NSNumber *rate = [newCurrencyRates objectForKey:original.currency];
    double newAmount = [rate doubleValue] * [original.amount doubleValue];
    return [[Currency alloc] initWithCurrency:newCurrency amount:[NSNumber numberWithDouble:newAmount]];
}

@end
