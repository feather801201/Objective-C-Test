//
//  QRCodeController.m
//  Objective-C-Test
//
//  Created by iLab on 12/20/15.
//  Copyright (c) 2015 Practice. All rights reserved.
//

#import "QRCodeController.h"

@interface QRCodeController ()
@end

@implementation QRCodeController

@synthesize resultImageView;
@synthesize resultLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (IBAction)startScanning:(id)sender {

    resultLabel.text = @"Scanning..";
    
    ZBarReaderViewController *codeReader = [ZBarReaderViewController new];
    codeReader.readerDelegate=self;
    codeReader.supportedOrientationsMask = ZBarOrientationMaskAll;
    
    ZBarImageScanner *scanner = codeReader.scanner;
    [scanner setSymbology: ZBAR_I25 config: ZBAR_CFG_ENABLE to: 0];
    
    [self presentViewController:codeReader animated:YES completion:nil];
    
}

- (void) imagePickerController: (UIImagePickerController*) reader didFinishPickingMediaWithInfo: (NSDictionary*) info
{
    //  get the decode results
    id<NSFastEnumeration> results = [info objectForKey: ZBarReaderControllerResults];
    
    ZBarSymbol *symbol = nil;
    for(symbol in results)
        // just grab the first barcode
        break;
    
    // showing the result on textview
    resultLabel.text = symbol.data;
    
    resultImageView.image = [info objectForKey: UIImagePickerControllerOriginalImage];
    
    // dismiss the controller
    [reader dismissViewControllerAnimated:YES completion:nil];
}

@end
