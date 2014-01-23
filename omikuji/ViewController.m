//
//  ViewController.m
//  omikuji
//
//  Created by 藤井　章裕 on 14/01/23.
//  Copyright (c) 2014年 univercity of kitakyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int random;
}


@end

@implementation ViewController

UIImage *omi1Image;
UIImage *omi2Image;
UIImage *omi3Image;



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    kekkalbl.hidden = YES;
    againbtn.hidden = YES;
    
    omi1Image = [UIImage imageNamed:@"gu.png"];
    omi2Image = [UIImage imageNamed:@"ch.png"];
    omi3Image = [UIImage imageNamed:@"pa.png"];
    
    [kekkalbl setFont:[UIFont boldSystemFontOfSize:18.0f]];
    [kekkalbl setTextColor:[UIColor blackColor]];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) omi1btn_down:(id)sender{
    meslbl.text = @"結果は...";
    omi1btn.hidden = YES;
    omi2btn.hidden = YES;
    omi3btn.hidden = YES;
    gazouImg.hidden = NO;
    kekkalbl.hidden = NO;
    againbtn.hidden = NO;
    
    [self image];
}
-(IBAction) omi2btn_down:(id)sender{
    meslbl.text = @"結果は...";
    omi1btn.hidden = YES;
    omi2btn.hidden = YES;
    omi3btn.hidden = YES;
    gazouImg.hidden = NO;
    kekkalbl.hidden = NO;
    againbtn.hidden = NO;
    
    [self image];
}
-(IBAction) omi3btn_down:(id)sender{
    meslbl.text = @"結果は...";
    omi1btn.hidden = YES;
    omi2btn.hidden = YES;
    omi3btn.hidden = YES;
    gazouImg.hidden = NO;
    kekkalbl.hidden = NO;
    againbtn.hidden = NO;
    
    [self image];
}
-(IBAction) againbtn_down:(id)sender{
    
    omi1btn.hidden = NO;
    omi2btn.hidden = NO;
    omi3btn.hidden = NO;
    meslbl.text = @"結果は...";
    [gazouImg setImage:nil];
    kekkalbl.text = @"";
    againbtn.hidden = YES;
}

- (void)image{
    random = arc4random() % 6;
    
    switch (random) {
        case 0:
            gazouImg.image = [UIImage imageNamed:@"omikuji_daikichi"];
            kekkalbl.text = @"とってもいいことがあります！";
            break;
            
        case 1:
            gazouImg.image = [UIImage imageNamed:@"omikuji_chuukichi"];
            kekkalbl.text = @"そこそこいいことがあるかもです！";
            break;
        case 2:
            gazouImg.image = [UIImage imageNamed:@"omikuji_suekichi"];
            kekkalbl.text = @"ぼちぼちいいことがあるです！";
            break;
        case 3:
            gazouImg.image = [UIImage imageNamed:@"omikuji_syoukichi"];
            kekkalbl.text = @"いいことがあるような気がします！";
            break;
        case 4:
            gazouImg.image = [UIImage imageNamed:@"omikuji_kyou"];
            kekkalbl.text = @"気をつけてください！";
            break;
        case 5:
            gazouImg.image = [UIImage imageNamed:@"omikuji_daikyou"];
            kekkalbl.text = @"DANGER";
            
            
            break;
            
        default:
            break;
    }
    
}





@end
