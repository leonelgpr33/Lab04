//
//  Scores.h
//  Lab04
//
//  Created by LI Leonel G. Pérez Ramos on 21/01/15.
//  Copyright (c) 2015 Leonel_GPR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"


@interface Scores : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UILabel *lblResultado;

@property (strong, nonatomic) IBOutlet UILabel *lblTimestamp;

@property (strong, nonatomic) IBOutlet UITableView *tableView;


- (IBAction)btnBack:(id)sender;

@end
