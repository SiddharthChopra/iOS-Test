//
//	RootClass.swift
//
//	Create by Kahuna on 31/1/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation
import ObjectMapper


class RootClass: NSObject, NSCoding, Mappable {

	var address: Addres?
	var company: Company?
	var email: String?
	var id: Int?
	var name: String?
	var phone: String?
	var username: String?
	var website: String?

	class func newInstance(map: Map) -> Mappable? {
		return RootClass()
	}

	required init?(map: Map) {}
	private override init() {}

	func mapping(map: Map) {
		address <- map["address"]
		company <- map["company"]
		email <- map["email"]
		id <- (map["id"], StringToIntTransformer())
		name <- map["name"]
		phone <- map["phone"]
		username <- map["username"]
		website <- map["website"]
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder) {
         address = aDecoder.decodeObject(forKey: "address") as? Addres
         company = aDecoder.decodeObject(forKey: "company") as? Company
         email = aDecoder.decodeObject(forKey: "email") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         name = aDecoder.decodeObject(forKey: "name") as? String
         phone = aDecoder.decodeObject(forKey: "phone") as? String
         username = aDecoder.decodeObject(forKey: "username") as? String
         website = aDecoder.decodeObject(forKey: "website") as? String
	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder) {
		if address != nil {
			aCoder.encode(address, forKey: "address")
		}
		if company != nil {
			aCoder.encode(company, forKey: "company")
		}
		if email != nil {
			aCoder.encode(email, forKey: "email")
		}
		if id != nil {
			aCoder.encode(id, forKey: "id")
		}
		if name != nil {
			aCoder.encode(name, forKey: "name")
		}
		if phone != nil {
			aCoder.encode(phone, forKey: "phone")
		}
		if username != nil {
			aCoder.encode(username, forKey: "username")
		}
		if website != nil {
			aCoder.encode(website, forKey: "website")
		}
	}

}
