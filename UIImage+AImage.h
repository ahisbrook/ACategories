/*
 ACategories
 (c) Adrienne Hisbrook, 2013
 */

#import <UIKit/UIKit.h>

@interface UIImage (AImage)
+(UIImage*)imageWithContentsOfUrlString:(NSString*)urlString;
+(UIImage*)imageWithContentsOfUrl:(NSURL*)url;
+(UIImage*)imageWithColor:(UIColor *)color;
+(UIImage*)imageWithColor:(UIColor *)color withSize:(CGSize)size;
+(UIImage*)imageNamed:(NSString *)name withColor:(UIColor *)color;
+(UIImage*)screenshot;
+(UIImage*)screenshotOfView:(UIView*)view;
+(UIImage *)imageFromImage:(UIImage*)mask withColor:(UIColor*)color;
@end
