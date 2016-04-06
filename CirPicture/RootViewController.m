//
//  RootViewController.m
//  CirPicture
//
//  Created by 魏永贺 on 16/4/5.
//  Copyright © 2016年 魏永贺. All rights reserved.
//

#import "RootViewController.h"
#import "ImageView.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //获取要显示的位置
    CGRect screenFrame = [[UIScreen mainScreen] bounds];
    
    CGRect frame = CGRectMake(10, 60, screenFrame.size.width - 20, 200);
    
    NSArray *imageArray = @[@"001.jpg", @"002.jpg", @"003.jpg", @"004.jpg", @"005.jpg",];
    
    //初始化控件
    ImageView *imageView = [ImageView ImageViewWithFrame:frame];
    imageView.imageViewArray = imageArray;
    imageView.scrollInterval = 3;
    imageView.animationInterVale = 0.6;
    [self.view addSubview:imageView];
    //    监听点击事件
    [imageView addTapEventForImageWithBlock:^(NSInteger imageIndex) {
        NSString *str = [NSString stringWithFormat:@"我是第%ld张图片", imageIndex];
        UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:str delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alter show];
    }];
    
}


@end
