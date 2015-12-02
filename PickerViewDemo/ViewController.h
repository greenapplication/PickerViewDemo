//
//  ViewController.h
//  PickerViewDemo
//
//  Created by Ankur Kathiriya on 02/12/15.
//  Copyright © 2015 Wednesday technology. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IQDropDownTextField.h"

@interface ViewController : UIViewController


@property (strong, nonatomic) IBOutlet IQDropDownTextField *txtTextPicker;
@property (strong, nonatomic) IBOutlet IQDropDownTextField *txtDatePicker;
@property (strong, nonatomic) IBOutlet IQDropDownTextField *txtTimePicker;
@property (strong, nonatomic) IBOutlet IQDropDownTextField *txtDateTimePicker;




@end

