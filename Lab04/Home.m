//
//  ViewController.m
//  Lab04
//
//  Created by LI Leonel G. Pérez Ramos on 19/01/15.
//  Copyright (c) 2015 Leonel_GPR. All rights reserved.
//

#import "Home.h"
#import "GlobalVars.h"


NSTimer *myTimer;

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    counter=0;
    
     myTimer = [NSTimer scheduledTimerWithTimeInterval:10.0 target:self selector:@selector(GoToScore) userInfo:nil repeats:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)GoToScore{
    [self performSegueWithIdentifier:@"GoToScores" sender:self];
}

- (IBAction)btnPush:(id)sender {
    counter++;
    self.lblScore.text = [NSString stringWithFormat:@"%d",counter];
}
@end
