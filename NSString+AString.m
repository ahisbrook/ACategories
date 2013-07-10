/*
 ACategories
 (c) Adrienne Hisbrook, 2013
 */

#import "NSString+AString.h"

@implementation NSString (AString)

+(BOOL)isNullOrEmpty:(NSString*)string {
    if (string == nil || [string isEqualToString:@""]) {
        return YES;
    }
    return NO;
}
-(BOOL)containsSubstring:(NSString*)subString {
    NSRange range = [self rangeOfString:subString];
    BOOL found = ( range.location != NSNotFound );
    return found;
}
+(NSString*)urlEncodedString:(NSString *)unencodedString {
    NSString *encoded = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL,(CFStringRef)unencodedString,NULL,(CFStringRef)@"!*'();:@&=+$,/?%#[]",kCFStringEncodingUTF8 ));
    return encoded;
}
+(NSString*)base64forData:(NSData *)data {
    const uint8_t* input = (const uint8_t*)[data bytes];
    NSInteger length = [data length];
    
    static char table[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
    
    NSMutableData* mdata = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
    uint8_t* output = (uint8_t*)mdata.mutableBytes;
    
    NSInteger i;
    for (i=0; i < length; i += 3) {
        NSInteger value = 0;
        NSInteger j;
        for (j = i; j < (i + 3); j++) {
            value <<= 8;
            
            if (j < length) {
                value |= (0xFF & input[j]);
            }
        }
        
        NSInteger index = (i / 3) * 4;
        output[index + 0] =                    table[(value >> 18) & 0x3F];
        output[index + 1] =                    table[(value >> 12) & 0x3F];
        output[index + 2] = (i + 1) < length ? table[(value >> 6)  & 0x3F] : '=';
        output[index + 3] = (i + 2) < length ? table[(value >> 0)  & 0x3F] : '=';
    }
    
    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}
@end
