//
//  AlamofireClient.swift
//  JZGTestDemo
//
//  Created by M.C on 17/1/11.
//  Copyright © 2017年 M.C. All rights reserved.
//

import Foundation
import Alamofire

public struct AlamofireClient: Client {
    
    public static let `default` = { AlamofireClient() }()
    
    public enum HostType: String {
        case sandbox = "https://httpbin.org/post"
    }
    
    /// Base host URL
    public var host: String = HostType.sandbox.rawValue
    
    func send<T : Request>(_ r: T, handler: @escaping (T.Response?, String?) -> Void) {
        
        let url = URL(string: r.privateHost ?? host.appending(r.path))!
        
        let sessionManager = Alamofire.SessionManager.default
        sessionManager.session.configuration.timeoutIntervalForRequest = r.timeoutInterval
        
        Alamofire.request(url, method: HTTPMethod(rawValue: r.HTTPMethod.rawValue)!,
                          parameters: r.parameter,
                          encoding: URLEncoding.default,
                          headers: nil)
            .response { (response) in
                
                if let data = response.data, let res = T.Response.parse(data: data) {
                    
                    handler(res, nil)
                    
                }else {
                    
                    handler(nil, response.error?.localizedDescription)
                }
        }
    }

}
