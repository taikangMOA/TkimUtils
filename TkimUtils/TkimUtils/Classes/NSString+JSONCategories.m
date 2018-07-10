//
//  UIViewController+JSONCategories.m
//  TkimBase
//
//  Created by pengyuan on 2017/9/8.
//  Copyright © 2017年 pengyuan. All rights reserved.
//

#import "NSString+JSONCategories.h"

@implementation NSString (JSONCategories)

-(id)JSONValue
{
    NSData* data = [self dataUsingEncoding:NSUTF8StringEncoding];
    __autoreleasing NSError* error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    if (error != nil) return nil;
    return result;
}


@end
