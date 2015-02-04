//
//  DBManager.h
//  Lab04
//
//  Created by LI Leonel G. Pérez Ramos on 31/01/15.
//  Copyright (c) 2015 Leonel_GPR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
int lastScore;

@interface DBManager : NSObject
{
    NSString *databasePath;
}
+(DBManager*)getSharedInstance;
-(BOOL)createDB;
-(BOOL)saveData:(NSString*)registerNumber detail:(NSString*)
    detail;
-(NSArray*) allRecords;
@end
