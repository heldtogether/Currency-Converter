//
//  Currency_ConverterTests.m
//  Currency ConverterTests
//
//  Created by Josh Sephton on 28/09/2014.
//  Copyright (c) 2014 Springa Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "Currency.h"
#import "CurrencyConverter.h"
#import "MockRatesRepository.h"

@interface Currency_ConverterTests : XCTestCase

@end

@implementation Currency_ConverterTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testCurrency
{
    Currency *currency = [[Currency alloc] initWithCurrency:@"GBP" amount:@23.000];
    XCTAssert([[currency description] isEqualToString:@"23.00 GBP"], @"Pass");
}

- (void)testRatesRepository
{
    MockRatesRepository *repo = [[MockRatesRepository alloc] init];
    id rates = [repo getRates];
    XCTAssert([rates isKindOfClass:[NSDictionary class]], @"Pass");
}

- (void)testInstantiation
{
    MockRatesRepository *repo = [[MockRatesRepository alloc] init];
    CurrencyConverter *converter = [[CurrencyConverter alloc] initWithRatesRepository:repo];
    XCTAssert(converter, @"Pass");
}

- (void)testConversionFromGBPToUSD
{
    Currency *originalCurrency = [[Currency alloc] initWithCurrency:@"GBP" amount:@23.000];
    MockRatesRepository *repo = [[MockRatesRepository alloc] init];
    CurrencyConverter *converter = [[CurrencyConverter alloc] initWithRatesRepository:repo];
    Currency *newCurrency = [converter convert:originalCurrency to:@"USD"];
    XCTAssert([[newCurrency description] isEqualToString:@"37.26 USD"], @"Pass");
}

- (void)testConversionFromUSDToGBP
{
    Currency *originalCurrency = [[Currency alloc] initWithCurrency:@"USD" amount:@37.26];
    MockRatesRepository *repo = [[MockRatesRepository alloc] init];
    CurrencyConverter *converter = [[CurrencyConverter alloc] initWithRatesRepository:repo];
    Currency *newCurrency = [converter convert:originalCurrency to:@"GBP"];
    XCTAssert([[newCurrency description] isEqualToString:@"23.10 GBP"], @"Pass");
}

@end
