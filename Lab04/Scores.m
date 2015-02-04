//
//  Scores.m
//  Lab04
//
//  Created by LI Leonel G. Pérez Ramos on 21/01/15.
//  Copyright (c) 2015 Leonel_GPR. All rights reserved.
//

#import "Scores.h"
#import "GlobalVars.h"
#import "Customcell.h"


int pos;


NSMutableArray *maScores;


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
    
    
    
  
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initController];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController
{
    int counter = 0;
    pos = 0;
    
    maScores = [NSMutableArray arrayWithArray:[[DBManager getSharedInstance]allRecords]];
    
    for(NSArray *item in maScores) {
        if([[item objectAtIndex:1] integerValue] == lastScore){
            pos = counter;
        }
        counter++;
    }

}

- (void)viewDidAppear:(BOOL)animated
{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:pos inSection:0];
    [self.tableView scrollToRowAtIndexPath:indexPath
                          atScrollPosition:UITableViewScrollPositionMiddle
                                  animated:YES];
      [self.tableView selectRowAtIndexPath:indexPath
                                  animated:YES
                            scrollPosition:UITableViewScrollPositionNone];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return maScores.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSLog(@"CellScore");
    static NSString *CellIdentifier = @"Customcell";
    
    Customcell *cell = (Customcell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[Customcell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    NSMutableArray *record = maScores[indexPath.row];
    
    cell.Title.text       = [record objectAtIndex:0];
    cell.Detail.text      = [record objectAtIndex:1];
/*
    if (indexPath.row == pos) {
        cell.backgroundColor = [UIColor brownColor];
    }
*/
    return cell;
}


/*/-------------------------------------------------------------------------------
 - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
 {
 self.lblSelectedName.text = maScores[indexPath.row];
 NSString *strTemp;
 
 strTemp = [self.lblSelectedName.text stringByAppendingString: @" fué seleccionado"];
 
 if (indexPath.row == 2)
 {
 alert = [[UIAlertView alloc] initWithTitle:@"Alerta Oaxaca"
 message:strTemp
 delegate:self
 cancelButtonTitle:@"Cancelar"
 otherButtonTitles:@"Guardar", @"Publicar", nil];
 [alert show];
 }
 }
 */

- (IBAction)btnBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
