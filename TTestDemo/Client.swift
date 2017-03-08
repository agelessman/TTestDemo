//
//  Client.swift
//  SwiftTest
//
//  Created by M.C on 17/1/5.
//  Copyright © 2017年 jingzhengu. All rights reserved.
//

import Foundation

protocol Client {
    
    var host: String { get }
    
    func send<T: Request>(_ r: T, handler: @escaping (T.Response?, String?) -> Void);
}
