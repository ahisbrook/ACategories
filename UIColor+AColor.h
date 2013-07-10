/*
 ACategories
 (c) Adrienne Hisbrook, 2013
 */

#import <UIKit/UIKit.h>

@interface UIColor (AColor)
+(UIColor*)colorFromHexString:(NSString*)hex;
+(UIColor*)colorFromHexString:(NSString*)hex alpha:(float)alpha;
@end
