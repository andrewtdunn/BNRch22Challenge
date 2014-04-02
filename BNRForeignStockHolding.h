//
//  BNRForeignStockHolding.h
//  Stocks
//
//  Created by Andrew Dunn on 3/31/14.
//  Copyright (c) 2014 Andrew Dunn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

@interface BNRForeignStockHolding : BNRStockHolding

@property (nonatomic) float conversionRate;

@end
