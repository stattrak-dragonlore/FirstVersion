//
//  FirstVersion.m
//
//  Created by Zhiping Deng on 12/8/13.
//
//  https://github.com/dengzhp/FirstVersion
//

#import "FirstVersion.h"
#import <FXKeychain.h>

@implementation FirstVersion

+ (void)load
{
    [self performSelectorOnMainThread:@selector(sharedInstance) withObject:nil waitUntilDone:NO];
}

+ (FirstVersion *)sharedInstance
{
    static FirstVersion *sharedInstance = nil;
    if (sharedInstance == nil) {
        sharedInstance = [[FirstVersion alloc] init];
    }
    return sharedInstance;
}

- (FirstVersion *)init
{
    if ((self = [super init])) {
        [self performSelectorOnMainThread:@selector(applicationDidLaunch) withObject:nil waitUntilDone:NO];
    }
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)applicationDidLaunch
{
    [[self class] storeFirstVersion];
}

+ (void)storeFirstVersion
{
    if ([FXKeychain defaultKeychain][kKeychainFirstVersionKey])
        return;

    [FXKeychain defaultKeychain][kKeychainFirstVersionKey] = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

+ (NSString *)getFirstVersion
{
    [self storeFirstVersion];
    return [FXKeychain defaultKeychain][kKeychainFirstVersionKey];
}

@end
