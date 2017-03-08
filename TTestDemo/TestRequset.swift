//
//  TestRequset.swift
//  TTestDemo
//
//  Created by M.C on 17/3/8.
//  Copyright © 2017年 M.C. All rights reserved.
//

import Foundation

struct TestRequest: Request {
    let name: String
    let userId: String
    
    var path: String {
        return ""
    }
    
    var privateHost: String? {
        return nil
    }
    
    var timeoutInterval: TimeInterval {
        return 20.0
    }
    
    var HTTPMethod: JZGHTTPMethod {
        return .post
    }
    
    var parameter: [String : Any]? {
        return ["name" : name,
                "userId" : userId]
    }
    
    typealias Response = TestResult
}
