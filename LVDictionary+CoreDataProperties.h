//
//  LVDictionary+CoreDataProperties.h
//  LetsVenture
//
//  Created by Utsav Dusad on 29/07/16.
//  Copyright © 2016 Utsav Dusad. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "LVDictionary.h"

NS_ASSUME_NONNULL_BEGIN

@interface LVDictionary (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *lvword;
@property (nullable, nonatomic, retain) NSString *lvdescription;

@end

NS_ASSUME_NONNULL_END
