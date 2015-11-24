//
//  ResultViewController.m
//  Quiz
//
//  Created by 暖 澤田 on 12/01/07.
//  Copyright (c) 2012年 慶應義塾大学. All rights reserved.
//

#import "ResultViewController.h"

@implementation ResultViewController {
    
    //クイズ画面から正答数を受ける
    int correctPercentage;
    
    //各種ラベル
    IBOutlet UILabel *percentageLabel;
    IBOutlet UILabel *levelLabel;
    
    //　レベルの画像を扱うImage View
    IBOutlet UIImageView *levelImage;
    
}

@synthesize correctPercentage;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //正答率に応じて「一般常識レベル」の位と画像を設定
    if (correctPercentage < 40) {
        levelLabel.text = @"noooo...";
        star1.hidden = YES;
        star2.hidden = YES;
        star3.hidden = YES;
        star4.hidden = YES;
        star5.hidden = YES;
        star6.hidden = YES;
        star7.hidden = YES;
        star8.hidden = YES;
        star9.hidden = YES;
        star10.hidden = YES;
        star11.hidden = YES;
        star12.hidden = YES;
        star13.hidden = YES;
        star14.hidden = YES;
        //levelImage.image = [UIImage imageNamed:@"level0030.png"];
    } else if (correctPercentage >= 40 && correctPercentage < 90) {
        levelLabel.text = @"umm...";
        star1.hidden = YES;
        star2.hidden = YES;
        star3.hidden = YES;
        star4.hidden = YES;
        star5.hidden = YES;
        star6.hidden = YES;
        star7.hidden = YES;
        star8.hidden = YES;
        star9.hidden = YES;
        star10.hidden = YES;
        star11.hidden = YES;
        star12.hidden = YES;
        star13.hidden = YES;
        star14.hidden = YES;
        //levelImage.image = [UIImage imageNamed:@"level3090.png"];
    } else if (correctPercentage >= 90){
        levelLabel.text = @"very good!!!";
        star1.hidden = NO;
        star2.hidden = NO;
        star3.hidden = NO;
        star4.hidden = NO;
        star5.hidden = NO;
        star6.hidden = NO;
        star7.hidden = NO;
        star8.hidden = NO;
        star9.hidden = NO;
        star10.hidden = NO;
        star11.hidden = NO;
        star12.hidden = NO;
        star13.hidden = NO;
        star14.hidden = NO;
        //levelImage.image = [UIImage imageNamed:@"level900.png"];
    }
    
    //実際の正答率を表示
    percentageLabel.text = [NSString stringWithFormat:@"%d %%", correctPercentage];
    
    
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
