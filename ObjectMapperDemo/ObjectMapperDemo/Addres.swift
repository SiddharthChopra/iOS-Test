//
//	Addres.swift
//
//	Create by Kahuna on 31/1/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class Addres : NSObject, NSCoding, Mappable{

	var city : String?
	var geo : Geo?
	var street : String?
	var suite : String?
	var zipcode : String?


	class func newInstance(map: Map) -> Mappable?{
		return Addres()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		city <- map["city"]
		geo <- map["geo"]
		street <- map["street"]
		suite <- map["suite"]
		zipcode <- map["zipcode"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         city = aDecoder.decodeObject(forKey: "city") as? String
         geo = aDecoder.decodeObject(forKey: "geo") as? Geo
         street = aDecoder.decodeObject(forKey: "street") as? String
         suite = aDecoder.decodeObject(forKey: "suite") as? String
         zipcode = aDecoder.decodeObject(forKey: "zipcode") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if city != nil{
			aCoder.encode(city, forKey: "city")
		}
		if geo != nil{
			aCoder.encode(geo, forKey: "geo")
		}
		if street != nil{
			aCoder.encode(street, forKey: "street")
		}
		if suite != nil{
			aCoder.encode(suite, forKey: "suite")
		}
		if zipcode != nil{
			aCoder.encode(zipcode, forKey: "zipcode")
		}

	}

}