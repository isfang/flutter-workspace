//
//  TYFlutterInstance.h
//  flutter-iOS_Example
//
//  Created by 房栋 on 2019/2/22.
//  Copyright © 2019 isfang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>

NS_ASSUME_NONNULL_BEGIN

@interface TYFlutterInstance : NSObject
+ (instancetype)oneInstance;
@property (nonatomic, strong) FlutterViewController *flutterViewController;
@end

NS_ASSUME_NONNULL_END
