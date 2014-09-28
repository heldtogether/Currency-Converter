//
//  RatesRepository.h
//  Currency Converter
//
//  Created by Josh Sephton on 28/09/2014.
//  Copyright (c) 2014 Springa Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol iRatesRepository <NSObject>

@required
- (NSDictionary *)getRates;

@end
