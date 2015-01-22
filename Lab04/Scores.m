//
//  Scores.m
//  Lab04
//
//  Created by LI Leonel G. Pérez Ramos on 21/01/15.
//  Copyright (c) 2015 Leonel_GPR. All rights reserved.
//

#import "Scores.h"
#import "GlobalVars.h"

@interface Scores ()

@end

@implementation Scores

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDate *hoy = [[NSDate alloc] init];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"cccc, MMMM dd, YYYY, \n hh:mm aa"];
   NSString *prettyVersion = [dateFormat stringFromDate:hoy];
    
    self.lblResultado.text= [NSString stringWithFormat:@"%d",counter];
    self.lblTimestamp.text = prettyVersion;
    
    
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

@end
