//
//  ViewController.m
//  TextfieldTest
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>


@end

@implementation ViewController





- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    UILabel *label1= [[UILabel alloc] initWithFrame:CGRectMake(20, 135, 49, 21)];
    label1.text = @"return";
    label1.textColor = [UIColor blackColor];
    label1.backgroundColor = [UIColor clearColor];
    [label1 sizeToFit];
        [self.view addSubview:label1];
    
    UILabel *label2= [[UILabel alloc] initWithFrame:CGRectMake(20, 170, 49, 21)];
    label2.text = @"입력불가";
    label2.textColor = [UIColor blackColor];
    label2.backgroundColor = [UIColor clearColor];
    [label2 sizeToFit];
            [self.view addSubview:label2];
    
    UILabel *label3= [[UILabel alloc] initWithFrame:CGRectMake(20, 215, 49, 21)];
    label3.text = @"Z입력금지";
    label3.textColor = [UIColor blackColor];
    label3.backgroundColor = [UIColor clearColor];
    [label3 sizeToFit];
    [self.view addSubview:label3];
 

    UITextField *textField1 = [[UITextField alloc]initWithFrame:CGRectMake(130, 130, 171, 31)];
    textField1.borderStyle = UITextBorderStyleRoundedRect;
    textField1.delegate=self;
    textField1.tag=1;
    
            [self.view addSubview:textField1];
    UITextField *textField2 = [[UITextField alloc]initWithFrame:CGRectMake(130, 170, 171, 31)];
    textField2.borderStyle = UITextBorderStyleRoundedRect;
    textField2.delegate=self;
    textField2.tag=2;
    
    [self.view addSubview:textField2];
    
    UITextField *textField3 = [[UITextField alloc]initWithFrame:CGRectMake(130, 210, 171, 31)];
    textField3.borderStyle = UITextBorderStyleRoundedRect;
    textField3.delegate=self;
    textField3.tag=3;
    
    [self.view addSubview:textField3];
    
   
	// Do any additional setup after loading the view, typically from a nib.
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if(2==textField.tag)
        return NO;
    return YES;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"INPUT : %@",textField.text);
    [textField resignFirstResponder];
    return YES;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if(3==textField.tag && NSOrderedSame == [string compare:@"z" options:NSCaseInsensitiveSearch])
       return NO;
       
       return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    
    // Dispose of any resources that can be recreated.
}

@end
