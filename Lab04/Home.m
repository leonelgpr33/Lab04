//
//  ViewController.m
//  Lab04
//
//  Created by LI Leonel G. Pérez Ramos on 19/01/15.
//  Copyright (c) 2015 Leonel_GPR. All rights reserved.
//

#import "Home.h"
#import "GlobalVars.h"


int counter;
int countDown;
NSTimer *initCountDown;



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

-(void)Save{
    BOOL success = NO;
    NSDateFormatter *DateFormatter=[[NSDateFormatter alloc] init];
    [DateFormatter setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
    
    
    success = [[DBManager getSharedInstance]saveData:
               [NSString stringWithFormat:@"%i",counter]
                                              detail:[DateFormatter stringFromDate:[NSDate date]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)GoToScore{
    [self Save];
    [self performSegueWithIdentifier:@"GoToScores" sender:self];
    

}

- (IBAction)btnPush:(id)sender {
    counter++;
    self.lblScore.text = [NSString stringWithFormat:@"%d",counter];
}
@end
