//
//  JtextView.m
//  baidu
//
//  Created by Jeffrey on 14-9-24.
//  Copyright (c) 2014年 Jeffrey. All rights reserved.
//

#import "JtextView.h"
#import "JListViewController.h"
#import "JBaiDuViewController.h"
@implementation JtextView
@synthesize m_handler;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self initSubView];
        
    }
    return self;
}
-(void)initSubView{
    self.backgroundColor=[UIColor yellowColor];
    UIButton *button=[[UIButton alloc]initWithFrame:CGRectMake(50, 200, 100, 40)];
    [button setBackgroundColor:[UIColor greenColor]];
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonSelect:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
    [button release];

}
-(void)turnToListViewController:(pushViewController)handler{
    //使用block的方法
    m_handler=[handler copy];
}


-(void)buttonSelect:(UIButton*)sender{
//    //方法1
//    if([self.delegate respondsToSelector:@selector(textFromDelegate)]){
//        [self.delegate textFromDelegate];
//    }
    /////这个方法可以解决了从view使用代理的方法回到uiviewcontroller再跳转到下一个控制器，因为视图无法直接调用控制器跳转方法(pushViewController),平常使用以上的方法处理这个问题。现在可以使用方法2解决些问题,直接解决了代码多余的问题
//    //方法2
//    JListViewController *listVC=[[JListViewController alloc]init];
//    JBaiDuViewController *baidu=(JBaiDuViewController*)self.delegate;
//    [baidu.navigationController pushViewController:listVC animated:YES];
    
    //方法3（新增加的方法)直接使用block方法，不仅简单化，还美观，这样不仅直接实现了代码，而且更加美观
    if(m_handler){
       m_handler();
    }

}


@end
