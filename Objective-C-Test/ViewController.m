//
//  ViewController.m
//  Objective-C-Test
//
//  Created by iLab on 12/17/15.
//  Copyright (c) 2015 Practice. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    // Optional: Place the button in the center of your view.
    loginButton.readPermissions =
    @[@"public_profile", @"email", @"user_friends"];
    
    loginButton.center = self.view.center;
    [self.view addSubview:loginButton];

    [FBSDKProfile enableUpdatesOnAccessTokenChange:YES];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(profileUpdated:)
                                                 name:FBSDKProfileDidChangeNotification
                                               object:nil];
}

-(void)profileUpdated:(NSNotification *) notification{
    
    NSMutableDictionary* parameters = [NSMutableDictionary dictionary];
    [parameters setValue:@"id,name,email" forKey:@"fields"];
    
    [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:parameters]
     startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection,
                                  id result, NSError *error) {

         emailLabel.text = [result valueForKey:@"email"];
         nameLabel.text = [result valueForKey:@"name"];
         loginView.profileID =[result valueForKey:@"id"];
         
         // aHandler(result, error);
     }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
