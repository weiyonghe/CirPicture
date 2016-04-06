//
//  ImageView.h
//  CirPicture
//
//  Created by 魏永贺 on 16/4/5.
//  Copyright © 2016年 魏永贺. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^TapImageViewButtonBlock)(NSInteger imageIndex);

@interface ImageView : UIView
//切换图片的时间间隔，可选，默认为3s
@property (nonatomic, assign) CGFloat scrollInterval;
//运动时间间隔,可选，默认为0.7s
@property (nonatomic, assign) CGFloat animationInterVale;
//图片数组
@property (nonatomic, strong) NSArray *imageViewArray;


+ (instancetype) ImageViewWithFrame: (CGRect) frame;

- (instancetype) initWithFrame: (CGRect)frame;
//为每个图片添加点击事件
- (void) addTapEventForImageWithBlock: (TapImageViewButtonBlock) block;

@end
