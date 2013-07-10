/*
 ACategories
 (c) Adrienne Hisbrook, 2013
 */

#import <Foundation/Foundation.h>

@interface NSString (AString)
+(NSString*)urlEncodedString:(NSString*)unencodedString;
+(NSString*)base64forData:(NSData*)data;
-(BOOL)containsSubstring:(NSString*)subString;
+(BOOL)isNullOrEmpty:(NSString*)string;
@end
