//
//  ViewController.m
//  Lesson11_Animation
//
//  Created by 朱 皓斌 on 12-12-25.
//  Copyright (c) 2012年 朱 皓斌. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    /*
    UIView *aniView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    aniView.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:aniView];
    
    [UIView beginAnimations:@"my_animation" context:nil];
    [UIView setAnimationDuration:3];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    aniView.frame=CGRectMake(100, 100, 50, 50);
    [UIView commitAnimations];
    */
    animationView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    [animationView setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:animationView];
    
    
    
    
    
    
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)butonTouched:(UIButton *)sender {
    switch (sender.tag) {
        case 1:
            
            [UIView beginAnimations:@"my_Animation" context:nil];
            [UIView setAnimationBeginsFromCurrentState:YES];
            [UIView setAnimationDuration:3];
            animationView.frame=CGRectMake([[animationView.layer presentationLayer] frame].origin.x, 0, 50, 50);
            
            [UIView commitAnimations];
            break;
        case 2:
            [UIView beginAnimations:@"my_Animation" context:nil];
            [UIView setAnimationBeginsFromCurrentState:YES];
            [UIView setAnimationDuration:3];
            animationView.frame=CGRectMake(270, [[animationView.layer presentationLayer] frame].origin.y, 50, 50);
            
            [UIView commitAnimations];
            break;
        case 3:
            [UIView beginAnimations:@"my_Animation" context:nil];
            [UIView setAnimationBeginsFromCurrentState:YES];
            [UIView setAnimationDuration:3];
            animationView.frame=CGRectMake([[animationView.layer presentationLayer] frame].origin.x, 410, 50, 50);
            
            [UIView commitAnimations];
            break;
        case 4:
            [UIView beginAnimations:@"my_Animation" context:nil];
            [UIView setAnimationBeginsFromCurrentState:YES];
            [UIView setAnimationDuration:3];
            animationView.frame=CGRectMake(0, [[animationView.layer presentationLayer] frame].origin.y, 50, 50);
            
            [UIView commitAnimations];
            break;
        case 5:
            [UIView beginAnimations:@"my_Animation" context:nil];
            [UIView setAnimationBeginsFromCurrentState:YES];
            [UIView setAnimationDuration:3];
            animationView.frame=CGRectMake([[animationView.layer presentationLayer] frame].origin.x, [[animationView.layer presentationLayer] frame].origin.y, 50, 50);
            
            [UIView commitAnimations];
            break;
            break;
        default:
            break;
    }
    
    
}
@end
