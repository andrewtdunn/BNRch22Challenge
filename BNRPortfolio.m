//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Andrew Dunn on 4/1/14.
//  Copyright (c) 2014 Andrew Dunn. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

// A class extension
@interface BNRPortfolio()
{
    NSMutableArray *_assets;
}

@end

@implementation BNRPortfolio

- (void)addStockHolding:(BNRStockHolding *)sh
{
    // is holdings nil?
    if (!self.holdings)
    {
        
        // create the array
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:sh];
}

- (void)removeStockHolding:(BNRStockHolding *)sh
{
    // is holdings nil?
    if (_holdings)
    {
        for (BNRStockHolding *s in self.holdings){
            if (s.symbol == sh.symbol)
            {
                NSLog(@"Removing %@", sh);
                [self.holdings removeObject:sh];
            }
        }
    }
}


- (float)totalValue{
    NSLog(@"Holdings: %@", self.holdings);
    // Sum up the value of the stock holdings
    float sum = 0;
    for (BNRStockHolding *h in _holdings){
        sum += [h valueInDollars];
    }
    
    return sum;
}




@end
