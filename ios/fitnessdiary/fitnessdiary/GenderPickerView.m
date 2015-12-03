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
#import "GenderView.h"

int chosenGender;

@implementation GenderPickerView

#pragma mark - Interface

- (void)viewDidLoad {
    [super viewDidLoad];
    [PFAnonymousUtils logInWithBlock:^(PFUser *user, NSError *error) {
        if (error) {
            NSLog(@"Anonymous login failed");
        } else {
            NSLog(@"Anonymous user logged in success");
        }
    }];
}

- (IBAction)maleButtonTap:(UIButton *)sender {
    PFUser *anon = [PFUser currentUser];
    anon[@"gender"] = @1;
    [anon saveInBackground];
    chosenGender = 1;
    [self performSegueWithIdentifier:@"chosegendersegue" sender:nil];
}

- (IBAction)femaleButtonTap:(UIButton *)sender {
    PFUser *anon = [PFUser currentUser];
    anon[@"gender"] = @0;
    [anon saveInBackground];
    chosenGender = 0;
    [self performSegueWithIdentifier:@"chosegendersegue" sender:nil];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"chosegendersegue"])
    {
        GenderView *controller = (GenderView *) segue.destinationViewController;
        controller.gender = chosenGender;
        NSLog(@"Gender:%i", chosenGender);
    }
}

@end
