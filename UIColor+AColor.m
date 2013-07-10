/*
 ACategories
 (c) Adrienne Hisbrook, 2013
 */

#import "UIColor+AColor.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIColor (AColor)

+(UIColor*)colorFromHexString:(NSString*)hex {
    return [self colorFromHexString:hex alpha:1.0];
}
+(UIColor*)colorFromHexString:(NSString*)hex alpha:(float)alpha {
    hex = [hex stringByReplacingOccurrencesOfString:@"#" withString:@""];
    // Handle hex triplet
    if (hex.length == 3) {
        NSArray *chars = [hex componentsSeparatedByString:@""];
        hex = [NSString stringWithFormat:@"%@%@%@%@%@%@", [chars objectAtIndex:0], [chars objectAtIndex:0], [chars objectAtIndex:1], [chars objectAtIndex:1], [chars objectAtIndex:2], [chars objectAtIndex:2]];
    }
    // Return clear color if not a valid hex string
    if (hex.length != 6) {
        return [UIColor clearColor];
    }
    float rValue = [self hexToFloat:[hex substringWithRange:NSRangeFromString(@"0,2")]];
    float gValue = [self hexToFloat:[hex substringWithRange:NSRangeFromString(@"2,2")]];
    float bValue = [self hexToFloat:[hex substringWithRange:NSRangeFromString(@"4,2")]];
    return [UIColor colorWithRed:rValue green:gValue blue:bValue alpha:alpha];    
}

+(float)hexToFloat:(NSString*)hex {
    uint i;
    NSScanner *scn = [NSScanner scannerWithString:hex];
    [scn scanHexInt:&i];
    return (float)i/255;
}
@end
