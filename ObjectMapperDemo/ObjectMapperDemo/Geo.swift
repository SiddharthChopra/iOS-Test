//
//	Geo.swift
//
//	Create by Kahuna on 31/1/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import ObjectMapper
import Dollar

class Geo: NSObject, NSCoding, Mappable {

	var lat: Float?
	var lng: Float?

	class func newInstance(map: Map) -> Mappable? {
		return Geo()
	}

	required init?(map: Map) {}
	private override init() {}

	func mapping(map: Map) {
        lat           <- (map["lat"], StringToFloatTransformer())
        lng           <- (map["lng"], StringToFloatTransformer())
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder) {
         lat = aDecoder.decodeObject(forKey: "lat") as? Float
         lng = aDecoder.decodeObject(forKey: "lng") as? Float
	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder) {
		if lat != nil {
			aCoder.encode(lat, forKey: "lat")
		}
		if lng != nil {
			aCoder.encode(lng, forKey: "lng")
		}
	}

}
