//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Andrew Dunn on 3/30/14.
//  Copyright (c) 2014 Andrew Dunn. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Stock Holding %@: %.2f value>", self.symbol, self.valueInDollars];
}

- (float)costInDollars {
    return self.purchaseSharePrice * self.numberOfShares;
}

- (float)valueInDollars {
    return self.currentSharePrice * self.numberOfShares;
}

@end
