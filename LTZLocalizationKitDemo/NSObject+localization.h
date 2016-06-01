//
//  NSObject+localization.h
//  LTZLocalizationKitDemo
//
//  Created by Peter Lee on 16/5/31.
//  Copyright © 2016年 Peter Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (localization)

@property (strong, nonatomic) NSDictionary<NSString *, NSDictionary *> *localStringDictionary;

- (void)languageDidChanged;

@end
