//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Bill Aggelopoulos on 11/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain


- (void)setOperand:(double)anOperand
{
    operand = anOperand;
}


- (void)performWaitingOperation
{
    if ([@"+" isEqual:waitingOperation])
    {
        operand = waitingOperand + operand;
    }
    else if ([@"-" isEqual:waitingOperation])
    {
        operand = waitingOperand - operand;

    }
    else if ([@"x" isEqual:waitingOperation])
    {
        operand = waitingOperand * operand;
    }
    else if ([@"/" isEqual:waitingOperation])
    {
        if (operand == 0)
        {
            // Alert gia diairesh me 0
        }
        else
        {
            operand = waitingOperand / operand;
        }
    }
    else if ([@"x^y" isEqual:waitingOperation])
    {
        operand = pow(waitingOperand,operand);
    }
}

- (double)performOperation:(NSString *)operation
{

    if ([@"sqrt" isEqual:operation])
    {
        operand = sqrt(operand);
    }
    else if ([@"+/-" isEqual:operation])
    {
        operand = - operand;
    }
    else if ([@"sin" isEqual:operation])
    {
        double sinRad;
        sinRad = operand * 0.017453292;
        operand = sin(sinRad);
    }
    else if ([@"cos" isEqual:operation])
    {
        double cosRad;
        cosRad = operand * 0.017453292;
        operand = cos(cosRad);    
    }
    else if ([@"tan" isEqual:operation])
    {
        double tanRad;
        tanRad = operand * 0.017453292;
        operand = tan(tanRad);    
    }
    else
    {
        [self performWaitingOperation];
        waitingOperand = operand;
        waitingOperation = operation;
    }    
    return operand;
}

- (void)clearBrain
{
    // Einai o swstos tropos adeiasmatos ths mnhmhs tou calculator, h arxikopoihsh se 0??
    operand = 0;
    waitingOperand = 0;
    waitingOperation = @"";    
}



@end
