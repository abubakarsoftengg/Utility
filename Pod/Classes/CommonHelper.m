//
//  CommonHelper.m
//  Pods
//
//  Created by Abu Bakar on 19/02/2016.
//
//

#import "CommonHelper.h"

@implementation CommonHelper

+(void)addObject:(id)object InArrayOnce:(NSMutableArray*)array
{
    if (![array containsObject:object]) {
        [array addObject:object];
    }
}

@end
