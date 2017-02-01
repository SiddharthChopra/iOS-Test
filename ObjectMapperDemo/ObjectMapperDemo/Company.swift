//
//	Company.swift
//
//	Create by Kahuna on 31/1/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import ObjectMapper

class Company: NSObject, NSCoding, Mappable {

	var bs: String?
	var catchPhrase: String?
	var name: String?

	class func newInstance(map: Map) -> Mappable? {
		return Company()
	}

	required init?(map: Map) {}
	private override init() {}

	func mapping(map: Map) {
		bs <- map["bs"]
		catchPhrase <- map["catchPhrase"]
		name <- map["name"]
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder) {
         bs = aDecoder.decodeObject(forKey: "bs") as? String
         catchPhrase = aDecoder.decodeObject(forKey: "catchPhrase") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String
	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder) {
		if bs != nil {
			aCoder.encode(bs, forKey: "bs")
		}
		if catchPhrase != nil {
			aCoder.encode(catchPhrase, forKey: "catchPhrase")
		}
		if name != nil {
			aCoder.encode(name, forKey: "name")
		}
	}

}
