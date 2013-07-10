/*
 ACategories
 (c) Adrienne Hisbrook, 2013
 */

#import "NSDateFormatter+ADateFormatter.h"

@implementation NSDateFormatter (ADateFormatter)

+(NSDateFormatter*)ISODateFormatter {
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"UTC"]];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'hh:mm:ss.SSSSSSS'Z'"];
    return dateFormatter;
}

@end
