//
//  GenderView.h
//  fitnessdiary
//
//  Created by csjan on 12/2/15.
//  Copyright © 2015 tapgo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GenderView : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *nextButton;
- (IBAction)nextButtonTap:(UIBarButtonItem *)sender;

@end
