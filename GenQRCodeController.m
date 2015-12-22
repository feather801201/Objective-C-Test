//
//  GenQRCodeController.m
//  Objective-C-Test
//
//  Created by iLab on 12/22/15.
//  Copyright (c) 2015 Practice. All rights reserved.
//

#import "GenQRCodeController.h"
#import "UIImage+QRCodeGenerator.h"

@interface GenQRCodeController ()

@end

@implementation GenQRCodeController

@synthesize imgView;
@synthesize generateTextField;
@synthesize generateButton;
@synthesize clearButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    generateButton.hidden=NO;
    clearButton.hidden=YES;
}


-(IBAction)generateButton:(id)sender{
    [self.view setBackgroundColor:[UIColor grayColor]];
    
    imgView.image = [UIImage QRCodeGenerator:generateTextField.text
                              andLightColour:[UIColor whiteColor]
                               andDarkColour:[UIColor blackColor]
                                andQuietZone:1
                                     andSize:300];

    generateButton.hidden=YES;
    clearButton.hidden=NO;
}

- (IBAction)onBackgroungHit:(id)sender {  //輸入完畢退出小鍵盤
    [generateTextField resignFirstResponder];
}


- (IBAction)clearButton:(id)sender {
    generateTextField.text=@"";
    imgView.image = nil;
    generateButton.hidden=NO;
    clearButton.hidden=YES;
}

@end
