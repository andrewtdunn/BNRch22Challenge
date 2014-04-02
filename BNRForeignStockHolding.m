//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Andrew Dunn on 3/31/14.
//  Copyright (c) 2014 Andrew Dunn. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars {
    return super.costInDollars * self.conversionRate;
}

- (float)valueInDollars {
    return super.valueInDollars * self.conversionRate;
}

@end
