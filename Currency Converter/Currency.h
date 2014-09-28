//
//  Currency.h
//  Currency Converter
//
//  Created by Josh Sephton on 28/09/2014.
//  Copyright (c) 2014 Springa Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Currency : NSObject

@property (nonatomic, strong) NSString *currency;
@property (nonatomic, strong) NSNumber *amount;

- (id)initWithCurrency:(NSString *)currency amount:(NSNumber *)amount;

@end
