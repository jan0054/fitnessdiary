//
//  GenderPickerView.h
//  fitnessdiary
//
//  Created by csjan on 12/2/15.
//  Copyright © 2015 tapgo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GenderPickerView : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *maleLabel;
@property (strong, nonatomic) IBOutlet UILabel *femaleLabel;
@property (strong, nonatomic) IBOutlet UIButton *maleButton;
@property (strong, nonatomic) IBOutlet UIButton *femaleButton;
@property (strong, nonatomic) IBOutlet UILabel *welcomeLabel;
- (IBAction)maleButtonTap:(UIButton *)sender;
- (IBAction)femaleButtonTap:(UIButton *)sender;

@end
