//
//  Request.swift
//  SwiftTest
//
//  Created by M.C on 17/1/5.
//  Copyright © 2017年 jingzhengu. All rights reserved.
//

import Foundation


public enum JZGHTTPMethod: String {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"
    
}

protocol Request {

    var path: String { get }
    var privateHost: String? { get }
    
    var HTTPMethod: JZGHTTPMethod { get }
    var timeoutInterval: TimeInterval { get }
    var parameter: [String: Any]? { get }
    
    associatedtype Response: Decodable
}



