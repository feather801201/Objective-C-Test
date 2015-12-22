//
//  QRCodeController.h
//  Objective-C-Test
//
//  Created by iLab on 12/20/15.
//  Copyright (c) 2015 Practice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"

@interface QRCodeController : UIViewController<ZBarReaderDelegate>

    @property (weak, nonatomic) IBOutlet UIImageView *resultImageView;

    @property (strong, nonatomic) IBOutlet UILabel *resultLabel;
                                                    
    - (IBAction)startScanning:(id)sender;

@end


