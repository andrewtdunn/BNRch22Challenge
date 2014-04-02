//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Andrew Dunn on 4/1/14.
//  Copyright (c) 2014 Andrew Dunn. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject

@property (nonatomic,copy) NSMutableArray *holdings;

- (void)addStockHolding:(BNRStockHolding *)sh;
- (void)removeStockHolding:(BNRStockHolding *)sh;
- (float)totalValue;




@end
