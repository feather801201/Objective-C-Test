//
//  AppDelegate.h
//  Objective-C-Test
//
//  Created by iLab on 12/17/15.
//  Copyright (c) 2015 Practice. All rights reserved.
//

#import <UIKit/UIKit.h>
@class QRCodeController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) QRCodeController *qrCodeController;

@end

