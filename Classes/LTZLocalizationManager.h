//
//  LTZLocalizationManager.h
//  LTZLocalizationKit
//
//  Created by Peter Lee on 16/5/30.
//  Copyright © 2016年 Peter Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

FOUNDATION_EXTERN NSString *const LTZLocalizationKitUserLanguageKey;
FOUNDATION_EXTERN NSString *const LTZLocalizationKitLanguageDidChangedKey;

#define LTZLocalizedString(key, comment) \
[LTZLocalizationManager localizedStringForKey:(key) value:@"" table:nil]

#define LTZLocalizedStringFromTable(key, tbl, comment) \
[LTZLocalizationManager localizedStringForKey:(key) value:@"" table:(tbl)]


typedef NS_ENUM(NSUInteger, LTZLocalizationType) {
    LTZLocalizationTypeSystem = 0,
    LTZLocalizationTypeDictionary
};

@interface LTZLocalizationManager : NSObject

@property (strong, nonatomic) NSBundle *bundle;
@property (strong, nonatomic) NSString *language;
@property (strong, nonatomic) NSMutableDictionary<NSString *, NSDictionary *> *localStringDictionary;
@property (assign, nonatomic) LTZLocalizationType localizationType;
@property (copy, nonatomic) void (^languageDidChangedBlock) (NSString *language);

+ (void)initialize; //初始化语言文件

+ (LTZLocalizationManager *)sharedManager;

+ (NSBundle *)bundle;//获取当前资源文件

+ (NSString *)language;//获取应用当前语言

+ (void)setLanguage:(NSString *)language;//设置当前语言

+ (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)table;

@end
