/*
 ACategories
 (c) Adrienne Hisbrook, 2013
 */

#import "UIView+AView.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (AView)
-(void)setBackgroundImage:(UIImage*)image {
    UIImageView *bgview = [[UIImageView alloc] initWithFrame:self.bounds];
    [self insertSubview:bgview atIndex:0];
}
-(void)setCornerRadius:(float)radius {
    [self.layer setCornerRadius:radius];
    self.clipsToBounds = YES;
}
-(void)setShadow:(float)radius withOffset:(float)offset {
    [self.layer setShadowColor:[UIColor blackColor].CGColor];
    [self.layer setShadowOpacity:0.5];
    [self.layer setShadowRadius:radius];
    [self.layer setShadowOffset:CGSizeMake(offset, offset)];
}
@end
