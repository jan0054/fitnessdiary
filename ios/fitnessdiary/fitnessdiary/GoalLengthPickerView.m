//
//  GoalLengthPickerView.m
//  fitnessdiary
//
//  Created by csjan on 12/2/15.
//  Copyright © 2015 tapgo. All rights reserved.
//

#import "GoalLengthPickerView.h"
#import <Parse/Parse.h>
#import "UIColor+ProjectColors.h"

@implementation GoalLengthPickerView

- (IBAction)doneButtonTap:(UIBarButtonItem *)sender {
    
    [self performSegueWithIdentifier:@"tosetupcompletesegue" sender:nil];
}
@end
