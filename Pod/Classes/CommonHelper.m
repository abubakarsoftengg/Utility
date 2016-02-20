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

+ (UIViewController*) topMostController {
    UIViewController *topController = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    while (topController.presentedViewController) {
        topController = topController.presentedViewController;
    }
    
    return topController;
}

#pragma mark - Remove Directory From iCLoud Backup
+ (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
{
    
    NSError *error = nil;
    BOOL success = [URL setResourceValue: [NSNumber numberWithBool: YES]
                                  forKey: NSURLIsExcludedFromBackupKey error: &error];
    if(!success){
        NSLog(@"Error excluding %@ from backup %@", [URL lastPathComponent], error);
    }
    return success;
}

+ (void)removeFileFromBackup:(NSString*)directory
{
    NSURL *urlFromPath = [[NSURL alloc] initFileURLWithPath:directory];
    
    if ([self addSkipBackupAttributeToItemAtURL:urlFromPath])
    {
        NSLog(@"Successfully Removed");
    }
}

@end
