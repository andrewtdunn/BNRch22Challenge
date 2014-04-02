//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Andrew Dunn on 3/30/14.
//  Copyright (c) 2014 Andrew Dunn. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface BNRStockHolding : NSObject

@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic,copy) NSString *symbol;

// BNRStockHolding has methods to calculate cost and value
- (float)costInDollars;
- (float)valueInDollars;



@end
