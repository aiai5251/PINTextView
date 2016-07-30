//
//  ViewController.m
//  PINTextView
//
//  Created by 雷亮 on 16/4/20.
//  Copyright © 2016年 雷亮. All rights reserved.
//

#import "ViewController.h"
#import "PINTextView.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
static CGFloat const kPadding = 30;

@interface ViewController ()

@property (nonatomic, strong) PINTextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.textView = [[PINTextView alloc] init];
    _textView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
    _textView.frame = CGRectMake(kPadding, 40, kScreenWidth - 2 * kPadding, 200);
    [self.view addSubview:_textView];
    
    _textView.placeholder = @"please input here...";
    _textView.placeholderFont = [UIFont systemFontOfSize:13];
    _textView.placeholderColor = [UIColor lightTextColor];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.textView resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
