//
//  ViewController.m
//  SocialLogin
//
//  Created by Taiyaba Sultana on 1/25/17.
//  Copyright © 2017 Abdul Kareem. All rights reserved.
//

#import "ViewController.h"
#import "NewUserViewController.h"
#import "HomeViewController.h"

@interface ViewController () {
    NSString * userName;
    NSString * userPassword;
}

@property (weak, nonatomic) IBOutlet UITextField *userNameField;
@property (weak, nonatomic) IBOutlet UITextField *userPasswordField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signIn:(id)sender {
    // validate user login credentials and when user is verified land user in main page
    userName = self.userNameField.text;
    userPassword = self.userPasswordField.text;
    NSLog(@"User Name: %@ \nPassoword: %@", userName, userPassword);
    
    //Below piece of code must be trigerred only after validating user credentials
    UIStoryboard *ref2ToStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    HomeViewController *pointerToHomeVC = [ref2ToStoryBoard instantiateViewControllerWithIdentifier:@"HomeVC"];
    pointerToHomeVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:pointerToHomeVC animated:YES completion:nil];
}

- (IBAction)createNewUser:(id)sender {
    // render create new user screen and when user fills in all details and clicks join button, enter a row in db
    UIStoryboard *refToStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    NewUserViewController *pointerToNewUserVC = [refToStoryBoard instantiateViewControllerWithIdentifier:@"NewUserVC"];
    pointerToNewUserVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:pointerToNewUserVC animated:YES completion:nil];
    
}

@end
