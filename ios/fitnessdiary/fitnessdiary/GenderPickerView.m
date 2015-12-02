//
//  GenderPickerView.m
//  fitnessdiary
//
//  Created by csjan on 12/2/15.
//  Copyright © 2015 tapgo. All rights reserved.
//

#import "GenderPickerView.h"
#import <Parse/Parse.h>
#import "UIColor+ProjectColors.h"

@implementation GenderPickerView

- (IBAction)maleButtonTap:(UIButton *)sender {
    
    [self performSegueWithIdentifier:@"chosegendersegue" sender:nil];
}

- (IBAction)femaleButtonTap:(UIButton *)sender {
    
    [self performSegueWithIdentifier:@"chosegendersegue" sender:nil];
}
@end
