#import "BlerterService.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation BlerterService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"com.blerter.grpc.service" serviceName:@"BlerterService"]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark generateToken(Request) returns (Response)

- (void)generateTokenWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCTogenerateTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCTogenerateTokenWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"generateToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Response class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark checkToken(Request) returns (Response)

- (void)checkTokenWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCTocheckTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCTocheckTokenWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"checkToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Response class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark postHealth(Request) returns (Response)

- (void)postHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCTopostHealthWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCTopostHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"postHealth"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Response class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark putHealth(Request) returns (Response)

- (void)putHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToputHealthWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToputHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"putHealth"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Response class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark deleteHealth(Request) returns (Response)

- (void)deleteHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCTodeleteHealthWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCTodeleteHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"deleteHealth"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Response class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark getHealth(Request) returns (Response)

- (void)getHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCTogetHealthWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCTogetHealthWithRequest:(Request *)request handler:(void(^)(Response *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"getHealth"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Response class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
