//
//  ViewController.h
//  omikuji
//
//  Created by 藤井　章裕 on 14/01/23.
//  Copyright (c) 2014年 univercity of kitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    __weak IBOutlet UIButton *omi1btn;

    __weak IBOutlet UIButton *omi2btn;
    
    __weak IBOutlet UIButton *omi3btn;
    
    __weak IBOutlet UIButton *againbtn;
    
    
    __weak IBOutlet UILabel *kekkalbl;
    
    __weak IBOutlet UIImageView *gazouImg;
    
    
    __weak IBOutlet UILabel *meslbl;
    
    
}

-(IBAction) omi1btn_down:(id)sender;
-(IBAction) omi2btn_down:(id)sender;
-(IBAction) omi3btn_down:(id)sender;
-(IBAction) againbtn_down:(id)sender;

-(void)image;


@end
