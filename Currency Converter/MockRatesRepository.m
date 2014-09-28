//
//  MockRatesRepository.m
//  Currency Converter
//
//  Created by Josh Sephton on 28/09/2014.
//  Copyright (c) 2014 Springa Ltd. All rights reserved.
//

#import "MockRatesRepository.h"

@implementation MockRatesRepository

/**
 * e.g.
 * return @{
 *           newCurency: @{
 *                           oldCurrency: 0.625451
 *                       }
 *           }
 **/
- (NSDictionary *)getRates
{
    return @{
             @"GBP": @{
                     @"USD": @0.62,
                     },
             @"USD": @{
                     @"GBP": @1.62,
                     },
             };
}

@end
