//
//  ViewController.h
//  Calculator
//
//  Created by Bill Aggelopoulos on 11/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface CalculatorViewController : UIViewController

{
    CalculatorBrain *brain;
    IBOutlet UILabel *display;
    IBOutlet UILabel *statusLabel;
    BOOL userIsInTheMiddleOfTypingANumber;
    BOOL isCalculatorOn;

}

- (IBAction)digitPressed:(UIButton *)sender;
- (IBAction)operationPressed:(UIButton *)sender;
- (IBAction)clearPressed:(UIButton *)sender;
- (IBAction)turnOff;

@end
