//
//  CurrencyConverter.h
//  Currency Converter
//
//  Created by Josh Sephton on 28/09/2014.
//  Copyright (c) 2014 Springa Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RatesRepository.h"
#import "Currency.h"

@interface CurrencyConverter : NSObject

- (id)initWithRatesRepository:(id<iRatesRepository>)repo;
- (Currency *)convert:(Currency *)original to:(NSString *)newCurrency;

@end
