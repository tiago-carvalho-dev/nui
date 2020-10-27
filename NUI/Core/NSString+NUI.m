//
//  NSString+NUIFunctional.m
//  NUIParse
//
//  Created by Pedro Branco on 28/10/2020.
//  Copyright © 2020 Smith Micro Software, Inc. All rights reserved.
//

#import "NSString+NUI.h"

@implementation NSString(NUI)

- (BOOL)hasHtmlElements
{
    NSRegularExpression *tagRegex = [NSRegularExpression regularExpressionWithPattern:@"<[^>]+>.*</[^>]+>" options:NSRegularExpressionCaseInsensitive error:nil];
    NSArray *matches = [tagRegex matchesInString:self options:0 range:NSMakeRange(0, self.length)];
    
    return matches.count > 0;
}

@end
