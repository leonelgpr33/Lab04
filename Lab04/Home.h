//
//  ViewController.h
//  Lab04
//
//  Created by LI Leonel G. Pérez Ramos on 19/01/15.
//  Copyright (c) 2015 Leonel_GPR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController

//labels
@property (strong, nonatomic) IBOutlet UILabel *lblScore;

//actions
- (IBAction)btnPush:(id)sender;

@end

