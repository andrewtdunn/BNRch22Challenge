//
//  main.m
//  Stocks
//
//  Created by Andrew Dunn on 3/30/14.
//  Copyright (c) 2014 Andrew Dunn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create portfolio object
        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
        
        
        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
        stock1.purchaseSharePrice = 2.30;
        stock1.currentSharePrice = 4.5;
        stock1.numberOfShares = 40;
        stock1.symbol = @"XYZ";
        
        
        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
        stock2.purchaseSharePrice = 2.30;
        stock2.currentSharePrice = 4.5;
        stock2.numberOfShares = 40;
        stock2.symbol = @"ABC";
        
        BNRForeignStockHolding *stock3 = [[BNRForeignStockHolding alloc] init];
        stock3.purchaseSharePrice = 2.30;
        stock3.currentSharePrice = 4.5;
        stock3.numberOfShares = 40;
        stock3.conversionRate = 0.94;
        stock3.symbol = @"LMN";
        
        // Add the stock holdings to the array
        [portfolio addStockHolding:stock1];
        [portfolio addStockHolding:stock2];
        [portfolio addStockHolding:stock3];
        
        NSLog(@"The stock value is %.2f", [portfolio totalValue]);
        
        [portfolio removeStockHolding:stock3];
        
        NSLog(@"The stock value is %.2f", [portfolio totalValue]);
        
        
    }
    return 0;
}

