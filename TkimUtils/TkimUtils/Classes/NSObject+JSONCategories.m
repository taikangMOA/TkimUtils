//
//  NSObject+JSONCategories.m
//  MXClient
//
//  Created by liyang on 15/1/12.
//  Copyright (c) 2015年 MXClient. All rights reserved.
//

#import "NSObject+JSONCategories.h"

@implementation NSObject (JSONCategories)
-(NSString*)JSONString
{
    NSError* error = nil;
    id result = [NSJSONSerialization dataWithJSONObject:self
                                                options:kNilOptions error:&error];
    if (error != nil) return nil;
    return [[NSString alloc] initWithData:result encoding:NSUTF8StringEncoding];
}



@end
