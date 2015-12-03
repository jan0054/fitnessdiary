//
//  BirthdayPickerView.m
//  fitnessdiary
//
//  Created by csjan on 12/2/15.
//  Copyright © 2015 tapgo. All rights reserved.
//

#import "BirthdayPickerView.h"
#import <Parse/Parse.h>
#import "UIColor+ProjectColors.h"

@implementation BirthdayPickerView

- (IBAction)doneButtonTap:(UIBarButtonItem *)sender {
    
    [self performSegueWithIdentifier:@"toheightsegue" sender:nil];
}
@end
