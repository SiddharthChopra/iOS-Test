//
//  ServerAPI.h
//  API_Framework
//
//  Created by Kahuna on 1/31/17.
//  Copyright © 2017 Kahuna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef id (^successHandler)(id result);
typedef id (^testHandler) (NSURLRequest *request, NSHTTPURLResponse *response, id JSON);
typedef id (^errorHandler)(NSError* error);

@interface ServerAPI : NSObject


- (void) invokeHTTPRequestGET : (NSString *)fullApiName withToken: (BOOL)TokenEmbedded  token:(NSString *)token withSucessBlock:(void (^)(id result))SucessBlock  withFailureBlock:(void (^)(NSError * error))FailureBlock;
- (void) invokeHTTPRequestPOST : (NSString *)fullApiName : (NSMutableDictionary *)jsonDict : (BOOL)TokenEmbedded  :(NSString *)token withSucessBlock:(void (^)(id result))SucessBlock  withFailureBlock:(void (^)(NSError * error))FailureBlock;

- (void) invokeHTTPRequestPUT : (NSString *)fullApiName : (NSMutableDictionary *)jsonDict : (BOOL)TokenEmbedded  :(NSString *)token withSucessBlock:(void (^)(id result))SucessBlock  withFailureBlock:(void (^)(NSError * error))FailureBlock;

- (void) invokeHTTPRequestDELETE : (NSString *)fullApiName : (NSMutableDictionary *)jsonDict : (BOOL)TokenEmbedded  :(NSString *)token withSucessBlock:(void (^)(id result))SucessBlock  withFailureBlock:(void (^)(NSError * error))FailureBlock;

-(void) callWS : (NSMutableURLRequest *)request  withSucessBlock:(void (^)(id result))SucessBlock  withFailureBlock:(void (^)(NSError * error))FailureBlock;

+(ServerAPI *)shareInstance;

@end
