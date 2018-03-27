#import "BlerterService.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "Model.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol BlerterService <NSObject>

#pragma mark generateToken(Request) returns (Response)

- (void)generateTokenWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCTogenerateTokenWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler;


#pragma mark checkToken(Request) returns (Response)

- (void)checkTokenWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCTocheckTokenWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler;


#pragma mark postHealth(Request) returns (Response)

- (void)postHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCTopostHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler;


#pragma mark putHealth(Request) returns (Response)

- (void)putHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToputHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler;


#pragma mark deleteHealth(Request) returns (Response)

- (void)deleteHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCTodeleteHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler;


#pragma mark getHealth(Request) returns (Response)

- (void)getHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCTogetHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface BlerterService : GRPCProtoService<BlerterService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
