//
//  LoginViewController.m
//  LoginBasic
//
//  Created by Patrick Nascimento on 14/09/16.
//  Copyright © 2016 patrix. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *notificationLabel;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.username = @"patricknasc";
    self.password = @"12345";
    self.passwordTextField.secureTextEntry = YES;
    
    
    NSLog(@"%@",self.username);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (IBAction)loginWasPressed:(id)sender {
    
    BOOL isUsernameEquals = [self.username isEqualToString: [self.userNameTextField text]];
    BOOL isPasswordEquals = [self.password isEqualToString: [self.passwordTextField text]];
    
    if(isUsernameEquals && isPasswordEquals){
        NSLog(@"SUCCESS!");
        [self.notificationLabel setText:@"Congratulations you have logged in!"];
        
    } else {
        NSLog(@"FAILURE!");
        [self.notificationLabel setText:@"Your username or password was incorrect!"];
    }
}


- (IBAction)unwindToLogin:(UIStoryboardSegue *)unwindSegue
{
    //Leave empty...
}



@end
