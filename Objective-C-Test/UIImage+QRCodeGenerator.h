
#import <UIKit/UIKit.h>

@interface UIImage (QRCodeGenerator)

/******************************************************************************/

+ (UIImage*)QRCodeGenerator:(NSString*)iData
             andLightColour:(UIColor*)iLightColour
              andDarkColour:(UIColor*)iDarkColour
               andQuietZone:(NSInteger)iQuietZone
                    andSize:(NSInteger)iSize;

/******************************************************************************/

@end
