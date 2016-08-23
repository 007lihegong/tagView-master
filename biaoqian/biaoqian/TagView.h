//
//  TagView.h
//  biaoqian
//
//  Created by 陈亚勃 on 16/1/8.
//  Copyright © 2016年 cyb. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ChangeFrameDelegate <NSObject>
-(void)ChangeFrameHeightTo:(CGFloat)height;
@end

@interface TagView : UIView
@property (nonatomic, assign) id <ChangeFrameDelegate> delegate;
/**
 *  tag的高度
 */
@property(nonatomic, assign) CGFloat tagViewButtonHeight;
/**
 *  tag的字号
 */
@property(nonatomic, assign) NSInteger tagViewButtonFont;
/**
 *  已经选择的tag的名字
 */
@property (nonatomic, strong) NSMutableArray<NSString *> *haveSelected;
/**
 *  还未选中的tag的名字
 */
@property (nonatomic, strong) NSMutableArray<NSString *> *notSelected;

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com