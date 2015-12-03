//
//  TargetWeightPickerView.m
//  fitnessdiary
//
//  Created by csjan on 12/2/15.
//  Copyright © 2015 tapgo. All rights reserved.
//

#import "TargetWeightPickerView.h"
#import <Parse/Parse.h>
#import "UIColor+ProjectColors.h"

@implementation TargetWeightPickerView

- (IBAction)doneButtonTap:(UIBarButtonItem *)sender {
    
    [self performSegueWithIdentifier:@"toactivepickersegue" sender:nil];
}
@end
