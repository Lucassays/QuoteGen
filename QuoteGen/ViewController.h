//
//  ViewController.h
//  QuoteGen
//
//  Created by Lucas on 5/19/13.
//  Copyright (c) 2013 Lucas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,strong) NSArray *myQuotes;
@property (nonatomic,strong) NSMutableArray *movieQuotes;
@property(nonatomic,strong) IBOutlet UITextView *quoteText;

- (IBAction)quoteButtonTapped:(id)sender;

@end
