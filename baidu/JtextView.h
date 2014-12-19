//
//  JtextView.h
//  baidu
//
//  Created by Jeffrey on 14-9-24.
//  Copyright (c) 2014年 Jeffrey. All rights reserved.
//

#import <UIKit/UIKit.h>
//代理方法
@protocol JtextViewDelegate<NSObject>

-(void)textFromDelegate;
@end

@interface JtextView : UIView
@property double odometer;
@property(nonatomic,assign)id<JtextViewDelegate>delegate;

//block
typedef void(^pushViewController)();
@property(nonatomic,strong) pushViewController m_handler;
-(void)turnToListViewController:(pushViewController)handler;

@end
