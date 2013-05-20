//
//  ViewController.m
//  QuoteGen
//
//  Created by Lucas on 5/19/13.
//  Copyright (c) 2013 Lucas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myQuotes=@[
                    @"I'll be back baby!",
                    @"事與願違,才是人生!!",
                    @"褲子脫掉,嘴巴張開!",
                    
                    ];
    NSString *plistCatPath=[[NSBundle mainBundle] pathForResource:@"quotes" ofType:@"plist"];
                            self.movieQuotes=[NSMutableArray arrayWithContentsOfFile:plistCatPath];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)quoteButtonTapped:(id)sender{
    int array_tot=[self.movieQuotes count];
    int index =(arc4random() % array_tot);
    
    NSString *my_quote=self.movieQuotes[index][@"quote"];
    self.quoteText.text=[NSString stringWithFormat:@"Quote:\n\n%@",my_quote];
    
}

@end
