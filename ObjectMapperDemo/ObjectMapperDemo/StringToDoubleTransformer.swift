//
//  StringToDoubleTransformer.swift
//  salonyios
//
//  Created by Dmytro Bohachevskyy on 12/7/16.
//  Copyright © 2016 Salony General Trading Company WLL. All rights reserved.
//

import ObjectMapper

struct StringToDoubleTransformer: TransformType {

    public typealias Object = Double
    public typealias JSON = AnyObject

    public func transformFromJSON(_ value: Any?) -> Object? {
        if let val = value as? String {
            return Double(val)
        }

        if let val = value as? Double {
            return val
        }

        if let val = value as? Double {
            return Double(val)
        }
        return nil
    }

    public func transformToJSON(_ value: Double?) -> JSON? {
        if value != nil {
            return value as StringToDoubleTransformer.JSON?
        }
        return nil
    }
    
}
