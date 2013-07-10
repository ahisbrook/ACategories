/*
 ACategories
 (c) Adrienne Hisbrook, 2013
 */

#import "UITableView+ATableView.h"

@implementation UITableView (ATableView)
-(void)setBackgroundImage:(UIImage*)image {
    UIImageView *bgView = [[UIImageView alloc] initWithFrame:self.bounds];
    [bgView setContentMode:UIViewContentModeRedraw];
    [bgView setImage:image];
    [self setBackgroundView:bgView];
}
@end
