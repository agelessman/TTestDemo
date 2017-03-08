//
//  Decodable.swift
//  SwiftTest
//
//  Created by M.C on 17/1/5.
//  Copyright © 2017年 jingzhengu. All rights reserved.
//

import Foundation

protocol Decodable {
    static func parse(data: Data) -> Self?
}
