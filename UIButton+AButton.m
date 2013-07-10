/*
 ACategories
 (c) Adrienne Hisbrook, 2013
 */

#import "UIButton+AButton.h"
#import "UIImage+AImage.h"
#import "UIView+AView.h"

@implementation UIButton (AButton)
-(void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state {
    UIImage *ci = [UIImage imageWithColor:backgroundColor];
    [self setBackgroundImage:ci forState:state];
}
@end
