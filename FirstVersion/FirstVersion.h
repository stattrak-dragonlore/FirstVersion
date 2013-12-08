//
//  FirstVersion.h
//
//  Created by Zhiping Deng on 12/8/13.
//
//  https://github.com/dengzhp/FirstVersion
//

#import <Foundation/Foundation.h>

static NSString *const kKeychainFirstVersionKey = @"F1rstVersi0nK3y";

@interface FirstVersion : NSObject

//get the first version stored in keychain on first run
+ (NSString *)getFirstVersion;

@end
