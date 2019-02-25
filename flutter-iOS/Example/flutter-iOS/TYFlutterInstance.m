//
//  TYFlutterInstance.m
//  flutter-iOS_Example
//
//  Created by 房栋 on 2019/2/22.
//  Copyright © 2019 isfang. All rights reserved.
//

#import "TYFlutterInstance.h"


@interface TYFlutterInstance()


@end

@implementation TYFlutterInstance

+ (instancetype)oneInstance {
    static TYFlutterInstance *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [TYFlutterInstance new];
    });
    return instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.flutterViewController = [[FlutterViewController alloc] init];
        [self.flutterViewController setInitialRoute:@"Page"];
    }
    return self;
}

@end



