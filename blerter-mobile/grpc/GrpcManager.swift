

import Foundation
import BlerterService

class GrpcManager: NSObject {
    static let instance = GrpcManager()
    var blerterService: BlerterService?
    var accessToken: String?
    
    
    func connect(grpcServer: String) -> Void {
        let grpc = grpcServer + ":31735"
        GRPCCall.useInsecureConnections(forHost: grpc);
         blerterService = BlerterService.init(host: grpc as String);
    }
}
