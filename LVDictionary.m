//
//  LVDictionary.m
//  LetsVenture
//
//  Created by Utsav Dusad on 29/07/16.
//  Copyright © 2016 Utsav Dusad. All rights reserved.
//

#import "LVDictionary.h"
#import "AppDelegate.h"

@implementation LVDictionary

// Insert code here to add functionality to your managed object subclass

//Returns all the clique entries of the cliqueList table.
-(NSArray *)getAllDictionary{
    
    
    
AppDelegate *delegate=    [[UIApplication sharedApplication] delegate];
    
    
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"LVDictionary"];
    
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"LVDictionary"
                                              inManagedObjectContext:delegate.managedObjectContext];
    [fetchRequest setEntity:entity];
    
    [fetchRequest setFetchBatchSize:20];
    
    NSError *error = nil;
    
    NSArray *fetchObjects=[delegate.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    NSMutableArray *allObjects=[[NSMutableArray alloc]init];
    for(LVDictionary  *temp in fetchObjects){
        NSDictionary *tempDict=[[NSMutableDictionary alloc] initWithObjectsAndKeys:temp.lvword,@"word",temp.lvdescription,@"description", nil];
        [allObjects addObject:tempDict];
    
    
    }
        

    
    return allObjects;
    
}



-(void ) insertIntoDictionary:(NSDictionary *)dict {
    
    AppDelegate *delegate=    [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext  *context=delegate.managedObjectContext;
    
    LVDictionary *newEntry = [NSEntityDescription insertNewObjectForEntityForName:@"LVDictionary" inManagedObjectContext:context];
    
    
    [newEntry setValue:[dict valueForKey:@"word"] forKey:@"lvword"];
    [newEntry setValue:[dict valueForKey:@"description"] forKey:@"lvdescription"];
   
    
    
    NSError *error = nil;
    // Save the new object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    

    
}



@end
