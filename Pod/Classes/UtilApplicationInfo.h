//
//  UtilApplicationInfo.h
//  Pods
//
//  Created by Abu Bakar on 13/02/2016.
//
//

#import <Foundation/Foundation.h>

@interface UtilApplicationInfo : NSObject

+(NSString *)bundlePath:(NSString *)fileName;

+(NSString *)applicationDocumentsPath:(NSString *)fileName;

+(NSString *)applicationDocumentDirectory;

+(NSString *)applicationLibraryDirectory;

+(BOOL)fileExistAtPath:(NSString*)filePath;

+ (NSString *) appVersion;

+ (NSString *) build;

+ (NSString *) versionBuild;

@end
