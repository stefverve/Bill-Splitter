//
//  ViewController.m
//  Bill Splitter
//
//  Created by Stefan Verveniotis on 2016-11-13.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)calculateSplitAmount:(id)sender {
    NSDecimalNumber * billAmt = [NSDecimalNumber decimalNumberWithString:self.textField.text];
    NSDecimalNumber * numSplitters = [NSDecimalNumber decimalNumberWithMantissa:self.slider.value exponent:0 isNegative:NO];
    self.label.text = [NSString stringWithFormat:@"%@", [billAmt decimalNumberByDividingBy:numSplitters]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
