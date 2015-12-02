//
//  ViewController.m
//  PickerViewDemo
//
//  Created by Ankur Kathiriya on 02/12/15.
//  Copyright © 2015 Wednesday technology. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIToolbar *toolbar = [[UIToolbar alloc] init];
    [toolbar setBarStyle:UIBarStyleBlackTranslucent];
    [toolbar sizeToFit];
    UIBarButtonItem *buttonflexible = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *buttonDone = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneClicked:)];
    
    [toolbar setItems:[NSArray arrayWithObjects:buttonflexible,buttonDone, nil]];
    _txtTextPicker.inputAccessoryView = toolbar;
    _txtDatePicker.inputAccessoryView = toolbar;
    _txtTimePicker.inputAccessoryView = toolbar;
    _txtDateTimePicker.inputAccessoryView = toolbar;
    
     [_txtTextPicker setItemList:[NSArray arrayWithObjects:@"London",@"Johannesburg",@"Moscow",@"Mumbai",@"Tokyo",@"Sydney", nil]];
     [_txtDatePicker setDropDownMode:IQDropDownModeDatePicker];
     [_txtTimePicker setDropDownMode:IQDropDownModeTimePicker];
     [_txtDateTimePicker setDropDownMode:IQDropDownModeDateTimePicker];

    // Do any additional setup after loading the view, typically from a nib.
}
-(void)doneClicked:(UIBarButtonItem*)button
{
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
