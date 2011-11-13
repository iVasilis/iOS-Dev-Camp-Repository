//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Bill Aggelopoulos on 11/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

{
    double operand, waitingOperand;
    NSString *waitingOperation;
}

- (void)setOperand:(double)anOperand;
- (double)performOperation:(NSString *)operation;
- (void)clearBrain;


@end
