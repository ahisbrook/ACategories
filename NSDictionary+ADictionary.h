/*
 ACategories
 (c) Adrienne Hisbrook, 2013
 */

#import <Foundation/Foundation.h>

@interface NSDictionary (ADictionary)
+(NSDictionary*)jsonWithContentsOfUrlString:(NSString*)urlString;
+(NSDictionary*)jsonWithContentsOfUrl:(NSURL*)url;
@end
