//
//  UtilApplicationInfo.m
//  Pods
//
//  Created by Abu Bakar on 13/02/2016.
//
//

#import "UtilApplicationInfo.h"

@implementation UtilApplicationInfo


+(NSString *)bundlePath:(NSString *)fileName
{
    return [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:fileName];
}

+(NSString *)applicationDocumentsPath:(NSString *)fileName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return [documentsDirectory stringByAppendingPathComponent:fileName];
}

@end
