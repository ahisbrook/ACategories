/*
 ACategories
 (c) Adrienne Hisbrook, 2013
 */

#import "UINavigationItem+ANavigationItem.h"

@implementation UINavigationItem (ANavigationItem)
-(void)setTitleLogo:(UIImage *)image {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:[self getFrameForLogo:image]];
    [imageView setImage:image];
    [imageView setContentMode:UIViewContentModeScaleAspectFit];
    [self setTitleView:imageView];
}

-(CGRect)getFrameForLogo:(UIImage*)logo {
    float frameHeight = 44;
    float frameWidth = 320;
    float th = frameHeight * 0.9;
    float tw = th * (logo.size.width / logo.size.height); // logo's width / height
    while (tw > frameWidth * 0.75) {
        th -= 0.01;
        tw = th * (logo.size.width / logo.size.height);
    }
    return CGRectMake(0,0,tw,th);
}
@end
