/*
 ACategories
 (c) Adrienne Hisbrook, 2013
 */

#import "NSData+AData.h"

@implementation NSData (AData)
+(NSData*)dataWithContentsOfUrlString:(NSString*)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    return [NSData dataWithContentsOfURL:url];
}
@end
