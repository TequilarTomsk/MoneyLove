//
//  AddTransactionViewController.m
//  MoneyLove
//
//  Created by Abu Khalid on 1/18/16.
//  Copyright © 2016 Abu Khalid. All rights reserved.
//

#import "AddTransactionViewController.h"
#import "Expenses.h"
#import "ExpenseCategory.h"
#import "AppDelegate.h"

@interface AddTransactionViewController ()

@end

@implementation AddTransactionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Add Transaction";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)selectCategoryAction:(id)sender {
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    SelectCategoryViewController *controller = (SelectCategoryViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"SelectCategory"];
    controller.delegate = self;
    [self.navigationController pushViewController:controller animated:YES];
}

-(void) selectCategoryObject:(CategoryObject *)categoryObject {
    if (categoryObject != nil) {
        [self.buttonCategory setImage:categoryObject.iconCategory forState:UIControlStateNormal];
        self.categoryNameLabel.text = categoryObject.nameCategory;
    } else {
        NSLog(@"The Category Object returned nil value");
    }
}

@end
