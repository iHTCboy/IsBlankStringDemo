//
//  ViewController.m
//  IsBlankStringDemo
//
//  Created by HTC on 2018/1/17.
//  Copyright © 2018年 HTC. All rights reserved.
//
// refo to https://www.jianshu.com/p/fd32b759bace

#import "ViewController.h"
#import "NSString+Utility.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

//****************************
    
    NSString *str = nil;//(网络解析出来的数据，解析结果为nil);
    BOOL isBlank1 = [str isBlankString];
    BOOL isBlank2 = [NSString isBlankString:str];
    BOOL isBlank3 = nil;
    BOOL isBlank4 = Nil;
    BOOL isBlank5 = NULL;
    
//****************************
    
    NSLog(@"%d %d %d %d %d", isBlank1, isBlank2, isBlank3, isBlank4, isBlank5);
    
    UITextView *textView = ({
        UITextView *text = [[UITextView alloc] initWithFrame:CGRectMake(10, 100, self.view.frame.size.width -20, self.view.frame.size.height -200)];
        text;
    });
    
    [self.view addSubview:textView];
    textView.text = @"NSString *str = nil;//(网络解析出来的数据，解析结果为nil);\nBOOL isBlank1 = [str isBlankString];\nBOOL isBlank2 = [NSString isBlankString:str];\nBOOL isBlank3 = nil;\nBOOL isBlank4 = Nil;\nBOOL isBlank5 = NULL;";
    textView.text = [NSString stringWithFormat:@"%@\n\n\nresult:\n\nisBlank1:%d \nisBlank2:%d \nisBlank3:%d \nisBlank4:%d \nisBlank5:%d", textView.text, isBlank1, isBlank2, isBlank3, isBlank4, isBlank5];
                            
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
