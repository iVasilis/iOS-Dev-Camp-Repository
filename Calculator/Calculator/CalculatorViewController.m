//
//  ViewController.m
//  Calculator
//
//  Created by Bill Aggelopoulos on 11/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

- (CalculatorBrain *)brain
{
    if (!brain)
    {
    brain = [[CalculatorBrain alloc] init];
    }
    return brain;
}



- (IBAction)digitPressed:(UIButton *)sender
{
    if (isCalculatorOn == YES)
    {
        NSString *digit = sender.titleLabel.text;
    
        if (display.text == @"0")
        {
            display.text = @"";
        }
    
   
        if (userIsInTheMiddleOfTypingANumber == YES)
        {
            // Append neou digit sthn o8onh
            display.text = [display.text stringByAppendingString:digit];
        }
        else
        {
            // Neo digit sthn o8onh
            display.text = digit;
    
            // Enhmerwsh flag, wste to epomeno digit na ginei append
            userIsInTheMiddleOfTypingANumber = YES;
        }
    }
    else
    {
        statusLabel.text = @"Ξέρεις, πρέπει να το ανοίξεις πρώτα...";
    }

}


- (IBAction)operationPressed:(UIButton *)sender
{ 
    if (isCalculatorOn == YES)
    {
        if (userIsInTheMiddleOfTypingANumber == YES)
        {
            // SET ths timhs tou ari8mou
            [[self brain] setOperand:display.text.doubleValue];
            
            // Enhmerwsh tou flag gia na graftei neo digit sthn o8onh
            userIsInTheMiddleOfTypingANumber = NO;
            
        }
        
        // Enhmerwsh gia to poia praxh path8hke apo to xrhsth
        NSString *operation = sender.titleLabel.text;
        
        // Epistrofh tou prwtou ari8mou pou path8hke 'h tou apotelesmatos
        double result = [[self brain] performOperation:operation];
        
        // Enhmerwsh ths o8onhs
        display.text = [NSString stringWithFormat:@"%g", result];
    }
    else
    {
        statusLabel.text = @"Ξέρεις, πρέπει να το ανοίξεις πρώτα...";
    }
}   


- (IBAction)clearPressed:(UIButton *)sender
{
    [brain clearBrain];
    display.text = @"0";
    isCalculatorOn = YES;
    statusLabel.text = @"";
}

- (IBAction)turnOff
{
    display.text = @"";
    isCalculatorOn = NO;
    statusLabel.text = @"";
}


@end
