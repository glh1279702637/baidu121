//
//  JBaiDuViewController.m
//  baidu
//
//  Created by Jeffrey on 14-8-7.
//  Copyright (c) 2014年 Jeffrey. All rights reserved.
//

#import "JBaiDuViewController.h"
@interface JBaiDuViewController ()

@end

@implementation JBaiDuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor yellowColor];
    // Do any additional setup after loading the view.
//    UIWebView *webView=[[UIWebView alloc]initWithFrame:self.view.bounds];
//    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]]];
//    webView.delegate=self;
//    [self.view addSubview:webView];
    
    
    UIButton *jumpBt=[[UIButton alloc]initWithFrame:CGRectMake(20, 130, 100, 50)];
    [jumpBt setTitle:@"跳转到B" forState:UIControlStateNormal];
    [jumpBt setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [jumpBt addTarget:self action:@selector(goToJump) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:jumpBt];
    NSMutableURLRequest *url=[[NSMutableURLRequest alloc]init];
    NSLog(@"%@",url);
    
    
    NSString *filePath=[NSString stringWithFormat:@"%@",[NSHomeDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"Documents/11.txt"]]];;
    NSMutableArray *array=[[NSMutableArray alloc]initWithContentsOfFile:filePath];
    if(!array){
        array=[[NSMutableArray alloc]init];
    }
    [array addObject:@"9393939"];
    [array addObject:@"ido"];
    [array addObject:@"39"];
    [array addObject:@"-23"];
    NSLog(@"%d",[array indexOfObject:@"-23" inRange:NSMakeRange(0, [array count])]);
    NSLog(@"%d",[array indexOfObject:@"-2323" inRange:NSMakeRange(0, [array count])]);

    [array writeToFile:filePath atomically:YES];
    
}

-(void)goToJump{
    
        NSURL *url  = [NSURL URLWithString:@"com.qt.LPEnterpriseContact://token=5941e8b146b8e164e60fedd41a4e0fc6&appcode=0&eccode=dioske389329393"];
//    NSURL *url  = [NSURL URLWithString:@"com.qt.LPEnterpriseContact://token=5941e8b146b8e164e60fedd41a4e0fc6"];
    
    if([[UIApplication sharedApplication]canOpenURL:url]){
        [[UIApplication sharedApplication] openURL:url];
    }else{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    }
    
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end


