//
//  ViewController.m
//  TextfieldTest
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

-(IBAction)dismissKeyboard :(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.textField becomeFirstResponder];
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)dismissKeyboard :(id)sender
{
    [self.textField resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    
    // Dispose of any resources that can be recreated.
}

@end
