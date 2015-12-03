//
//  GenderView.m
//  fitnessdiary
//
//  Created by csjan on 12/2/15.
//  Copyright © 2015 tapgo. All rights reserved.
//

#import "GenderView.h"
#import <Parse/Parse.h>
#import "UIColor+ProjectColors.h"

@implementation GenderView
@synthesize gender;

#pragma mark - Interface

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.gender == 0)
    {
        self.descriptionLabel.text = @"女性描述";
    }
    else
    {
        self.descriptionLabel.text = @"男性描述";
    }
}

- (IBAction)nextButtonTap:(UIBarButtonItem *)sender {
    
    [self performSegueWithIdentifier:@"tobirthdaysegue" sender:nil];
}
@end
