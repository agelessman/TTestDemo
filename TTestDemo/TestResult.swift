//
//  TestResult.swift
//  TTestDemo
//
//  Created by M.C on 17/3/8.
//  Copyright © 2017年 M.C. All rights reserved.
//

import Foundation

struct TestResult {
    var origin: String
}

extension TestResult: Decodable {
    static func parse(data: Data) -> TestResult? {
        do {
           let dic = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            
            guard let dict = dic as? Dictionary<String, Any> else {
                return nil
            }
            return TestResult(origin: dict["origin"] as! String)
        }catch {
            return nil
        }
    }
}
