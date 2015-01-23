//
//  IFAAlertViewController.m
//  InYourFace
//
//  Created by Duc Ho on 1/22/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "IFAAlertViewController.h"

@interface IFAAlertViewController ()

@end

@implementation IFAAlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self presentAlertViewController];
    
}

-(void)presentAlertViewController {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[self randomTitle] message:@"Try your luck" preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"1" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        if ([self play] == YES) {
            [self showResults:@"You Won"];
        }
        else {
            [self showResults:@"You Lose"];
        }
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"2" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        if ([self play] == YES) {
            [self showResults:@"You Won"];
        }
        else {
            [self showResults:@"You Lose"];
        }
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"3" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        if ([self play] == YES) {
            [self showResults:@"You Won"];
        }
        else {
            [self showResults:@"You Lose"];
        }
    }]];

    
    
    [self presentViewController:alertController animated:YES completion:nil];
}

-(BOOL)play {
    BOOL win;
    int index = arc4random_uniform(2);
    if (index == 1) {
        win = YES;
    }
    else {
        win = NO;
    }
    return win;
}


-(void)showResults:(NSString *)winorlose {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:winorlose message:@"Pick one of 2 options" preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        NSLog(@"Byebye");
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Play Again" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self presentAlertViewController];
        
    }]];
    [self presentViewController:alertController animated:YES completion:nil];

    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)randomTitle {
    
    int index = arc4random_uniform([self lines].count);
    return [self lines][index];
    
}

- (NSArray *)lines {
    
    return @[@"If peeing is cool, consider me Miles Davis",
             @"We don't need no stinking badges",
             @"Thank you very little",
             @"You can't fight in here. This is a war room.",
             @"There's no crying in baseball",
             @"I have nipples, greg. Could you milk me?",
             @"You could be drinking whole, if you wanted to.",
             @"Fat guy in a little coat",
             @"How can we be expected to teach children how to read if they can't even fit inside the building?"];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
