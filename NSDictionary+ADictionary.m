/*
 ACategories
 (c) Adrienne Hisbrook, 2013
 */

#import "NSDictionary+ADictionary.h"

@implementation NSDictionary (ADictionary)
+(NSDictionary*)jsonWithContentsOfUrlString:(NSString*)urlString {
    return [self jsonWithContentsOfUrl:[NSURL URLWithString:urlString]];
    
}
+(NSDictionary*)jsonWithContentsOfUrl:(NSURL*)url {
    NSError *error;
    NSData *data = [NSData dataWithContentsOfURL:url];
    NSDictionary *response = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    return response;
}
@end
