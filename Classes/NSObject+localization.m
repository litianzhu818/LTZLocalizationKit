//
//  NSObject+localization.m
//  LTZLocalizationKitDemo
//
//  Created by Peter Lee on 16/5/31.
//  Copyright © 2016年 Peter Lee. All rights reserved.
//

#import "NSObject+localization.h"
#import <objc/runtime.h>
#import "LTZLocalizationManager.h"

@implementation NSObject (localization)

- (void)setLocalStringDictionary:(NSDictionary<NSString *,NSDictionary *> *)localStringDictionary
{
    objc_setAssociatedObject(self, @selector(localStringDictionary), localStringDictionary, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSDictionary<NSString *,NSDictionary *> *)localStringDictionary
{
    return objc_getAssociatedObject(self, @selector(localStringDictionary));
}

- (void)languageDidChanged
{
}

@end
