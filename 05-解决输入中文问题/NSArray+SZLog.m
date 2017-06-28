//
//  NSArray+SZLog.m
//  05-解决输入中文问题
//
//  Created by Zahi on 2017/6/28.
//  Copyright © 2017年 Zahi. All rights reserved.
//

#import "NSArray+SZLog.h"

@implementation NSArray (SZLog)

- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *strM = [NSMutableString string];
    
    [strM appendString:@"(\n"];
    
    for (id obj in self) {
        [strM appendFormat:@"\t%@,\n",obj];
    }
    
    [strM deleteCharactersInRange:NSMakeRange(strM.length - 2, 1)];
    
    [strM appendString:@")\n"];
    
    return strM.copy;
}

@end



@implementation NSDictionary (SZLog)

- (NSString *)descriptionWithLocale:(id)locale
{
    
    NSMutableString *strM = [NSMutableString string];
    
    [strM appendString:@"{\n"];
    
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        [strM appendFormat:@"\t%@ = %@,\n",key, obj];
        
    }];
    
    [strM deleteCharactersInRange:NSMakeRange(strM.length - 2, 1)];
    
    [strM appendString:@"}\n"];
    
    
    return strM;
}


@end
