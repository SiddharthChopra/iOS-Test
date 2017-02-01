//
//  FloatToStringTransformer.swift
//  salonyios
//
//  Created by Dmytro Bohachevskyy on 12/7/16.
//  Copyright © 2016 Salony General Trading Company WLL. All rights reserved.
//

import ObjectMapper

public class StringToFloatTransformer: TransformType {
    public typealias Object = Float
    public typealias JSON = AnyObject

    convenience init(dateFormat: String) {
        self.init()
    }

    public func transformFromJSON(_ value: Any?) -> Object? {
        if let val = value as? String {
            return Float(val)
        }

        if let val = value as? Float {
            return val
        }

        if let val = value as? Int {
            return Float(val)
        }
        return nil
    }

    public func transformToJSON(_ value: Float?) -> JSON? {
        if value != nil {
            return value as StringToFloatTransformer.JSON?
        }
        return nil
    }
}
