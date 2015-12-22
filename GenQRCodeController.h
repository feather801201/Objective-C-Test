//
//  GenQRCodeController.h
//  Objective-C-Test
//
//  Created by iLab on 12/22/15.
//  Copyright (c) 2015 Practice. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GenQRCodeController : UIViewController
{
    UIImageView *imgView;
}

@property (strong, nonatomic) IBOutlet UIImageView *imgView;

@property (strong, nonatomic) IBOutlet UITextField *generateTextField;

@property (strong, nonatomic) IBOutlet UIButton *generateButton;

@property (strong, nonatomic) IBOutlet UIButton *clearButton;


-(IBAction)generateButton:(id)sender;

- (IBAction)clearButton:(id)sender;

@end
