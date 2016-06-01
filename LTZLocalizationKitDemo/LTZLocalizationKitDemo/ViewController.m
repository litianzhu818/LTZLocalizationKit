//
//  ViewController.m
//  LTZLocalizationKitDemo
//
//  Created by Peter Lee on 16/5/30.
//  Copyright © 2016年 Peter Lee. All rights reserved.
//

#import "ViewController.h"
#import "LTZLocalizationKit.h"

#define CHINESE @"zh-Hans"
#define ENGLISH @"en"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *changeButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [LTZLocalizationManager sharedManager].localStringDictionary = @{
                                                                     CHINESE:@{
                                                                                @"title":@"测试",
                                                                                @"btn_title":@"切换"
                                                                             },
                                                                     ENGLISH:@{
                                                                             @"title":@"test123",
                                                                             @"btn_title":@"change"
                                                                             }
                                                                     };
    [LTZLocalizationManager sharedManager].localizationType = LTZLocalizationTypeDictionary;
    
    self.title = LTZLocalizedStringFromTable(@"title", @"Main", nil);
    [self.changeButton setTitle: LTZLocalizedStringFromTable(@"btn_title", @"Main", nil) forState:UIControlStateNormal];
    [self.changeButton setTitle: LTZLocalizedStringFromTable(@"btn_title", @"Main", nil) forState:UIControlStateHighlighted];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changedLocationString:(id)sender
{
    if ([[LTZLocalizationManager language] isEqualToString:CHINESE]) {
        [LTZLocalizationManager setLanguage:ENGLISH];
    }else{
        [LTZLocalizationManager setLanguage:CHINESE];
    }
    
    
    self.title = LTZLocalizedStringFromTable(@"title", @"Main", nil);
    [self.changeButton setTitle: LTZLocalizedStringFromTable(@"btn_title", @"Main", nil) forState:UIControlStateNormal];
    [self.changeButton setTitle: LTZLocalizedStringFromTable(@"btn_title", @"Main", nil) forState:UIControlStateHighlighted];
}

@end
