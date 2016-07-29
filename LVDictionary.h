//
//  LVDictionary.h
//  LetsVenture
//
//  Created by Utsav Dusad on 29/07/16.
//  Copyright © 2016 Utsav Dusad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface LVDictionary : NSManagedObject

// Insert code here to declare functionality of your managed object subclass

-(NSArray *)getAllDictionary;

-(void ) insertIntoDictionary:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END

#import "LVDictionary+CoreDataProperties.h"
