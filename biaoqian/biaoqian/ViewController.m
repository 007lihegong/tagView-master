//
//  ViewController.m
//  biaoqian
//
//  Created by 陈亚勃 on 16/1/8.
//  Copyright © 2016年 cyb. All rights reserved.
//

#import "ViewController.h"
#import "TagView.h"
#import "FontController.h"
@interface ViewController ()<ChangeFrameDelegate>{
    TagView *_Tgview;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    CGRect frame = CGRectMake(10, 100, self.view.frame.size.width-20,300);
    _Tgview = [[TagView alloc] initWithFrame:frame];
    _Tgview.backgroundColor = [UIColor whiteColor];
    _Tgview.tagViewButtonFont = 15;
    _Tgview.haveSelected = [NSMutableArray arrayWithArray:@[]];
    _Tgview.notSelected = [NSMutableArray arrayWithArray:@[@"6你是",@"7我的",@"8小呀",@"9小苹果",@"0拜拜",@"1服务周到",@"2好",@"3棒棒哒~",@"4效率高",@"5认真负责"]];
    _Tgview.delegate = self;
    
    [self.view addSubview:_Tgview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)ChangeFrameHeightTo:(CGFloat)height{
    CGRect frame = _Tgview.frame;
    frame.size.height = height;
    _Tgview.frame = frame;
    NSLog(@"%s",__func__);
}

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com