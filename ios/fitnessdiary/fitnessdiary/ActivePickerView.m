//
//  ActivePickerView.m
//  fitnessdiary
//
//  Created by csjan on 12/2/15.
//  Copyright © 2015 tapgo. All rights reserved.
//

#import "ActivePickerView.h"
#import <Parse/Parse.h>
#import "UIColor+ProjectColors.h"

@implementation ActivePickerView

- (IBAction)doneButtonTap:(UIBarButtonItem *)sender {
    
    [self performSegueWithIdentifier:@"togoallengthsegue" sender:nil];
}
@end
