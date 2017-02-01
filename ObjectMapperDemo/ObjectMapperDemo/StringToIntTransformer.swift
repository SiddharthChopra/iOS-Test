//
//  StringToIntTransformer.swift
//  salonyios
//
//  Created by Dmytro Bohachevskyy on 12/7/16.
//  Copyright © 2016 Salony General Trading Company WLL. All rights reserved.
//

import ObjectMapper

public class StringToIntTransformer: TransformType {
    public typealias Object = Int
    public typealias JSON = AnyObject

    convenience init(dateFormat: String) {
        self.init()
    }

    public func transformFromJSON(_ value: Any?) -> Object? {
        if let val = value as? String {
            return Int(val)
        }

        if let val = value as? Int {
            return val
        }

        if let val = value as? Int {
            return Int(val)
        }
        return nil
    }

    public func transformToJSON(_ value: Int?) -> JSON? {
        if value != nil {
            return value as StringToIntTransformer.JSON?
        }
        return nil
    }
}

