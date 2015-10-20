//
//  LaunchViewController.m
//  fitnessdiary
//
//  Created by csjan on 10/20/15.
//  Copyright © 2015 tapgo. All rights reserved.
//

#import "LaunchViewController.h"
#import "MMDrawerController.h"
#import "MMDrawerVisualState.h"

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSegueWithIdentifier:@"drawersegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"drawersegue"]) {
        MMDrawerController *destinationViewController = (MMDrawerController *) segue.destinationViewController;
        
        // Instantitate and set the center view controller. (i.e. the default first view shown) depending on if there are events already chosen
        UIViewController *centerViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"main_tc"];
        [destinationViewController setCenterViewController:centerViewController];
        
        // Instantiate and set the left drawer controller. (the drawer view)
        UIViewController *leftDrawerViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"drawer_vc"];
        [destinationViewController setLeftDrawerViewController:leftDrawerViewController];
        
        [destinationViewController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeBezelPanningCenterView];
        [destinationViewController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeTapCenterView];
        [destinationViewController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModePanningCenterView];
        [destinationViewController setMaximumLeftDrawerWidth:200.0];
        [destinationViewController setDrawerVisualStateBlock:[MMDrawerVisualState parallaxVisualStateBlockWithParallaxFactor:3.0]];
        destinationViewController.shouldStretchDrawer = NO;
    }
}


@end
