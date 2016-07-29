//
//  Session.m
//  LetsVenture
//
//  Created by Utsav Dusad on 29/07/16.
//  Copyright © 2016 Utsav Dusad. All rights reserved.
//

#import "Session.h"

@implementation Session



+ (instancetype)sharedManager{
    static id sharedMyManager= nil;
    static dispatch_once_t onceToken;
    
    //init method should be called only once, because here we are creating a session configuration object, which should be created only once.
    /*
     Using disptach_once here ensures that multiple sessions with the same identifier are not created in this instance of the application. If you want to support multiple sessions within a single process, you should create each session with its own identifier.
    */
    dispatch_once(&onceToken, ^{

        sharedMyManager =[[self alloc]init];
    });
    return sharedMyManager;
}
-(instancetype)init{
    
    NSURLSessionConfiguration *configuration=[NSURLSessionConfiguration defaultSessionConfiguration];
    
//    managedObjectContext=[self getContext];
    [configuration setURLCache:[NSURLCache sharedURLCache]];
    //    [configuration setRequestCachePolicy:NSURLRequestUseProtocolCachePolicy];
    //[configuration setRequestCachePolicy:NSURLRequestReloadRevalidatingCacheData];
    
    //    [configuration setHTTPMaximumConnectionsPerHost:4];
    
    
    
    
    self=[super init];
    
    if(self){
        
          }
    return self;
}





@end
