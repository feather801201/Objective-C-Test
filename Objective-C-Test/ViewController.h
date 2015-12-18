//
//  ViewController.h
//  Objective-C-Test
//
//  Created by iLab on 12/17/15.
//  Copyright (c) 2015 Practice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface ViewController : UIViewController
{
    IBOutlet FBSDKProfilePictureView *loginView;
    
    IBOutlet UILabel *nameLabel;
    
    IBOutlet UILabel *emailLabel;
}

@end

