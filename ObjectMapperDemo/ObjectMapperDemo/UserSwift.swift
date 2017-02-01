//
//  UserSwift.swift
//  ObjectMapperDemo
//
//  Created by Kahuna on 1/31/17.
//  Copyright © 2017 Kahuna. All rights reserved.
//

import ObjectMapper
import Foundation

class UserSwift: NSObject, Mappable {

    var userId: Int?
    var name: String?
    var username: String?
    var email: String?
    var address: AddressSwift?
    var phone: String?
    var website: String?
    // MARK: - object mapping

    required init?(map: Map) {

    }

    func mapping(map: Map) {
        userId      <- map["id"]
        name  <- map["name"]
        username       <- map["username"]
        email        <- map["email"]
        address        <- map["address"]
        phone        <- map["phone"]
        website        <- map["website"]
    }

}

class AddressSwift: NSObject, Mappable {

    var street: String?
    var suite: String?
    var city: String?
    var zipcode: String?
    var lat: Float = 0
    var lng: Float = 0
    // MARK: - object mapping
    var asd: String?

    let transform = TransformOf<Float, String>(fromJSON: { (value: String?) -> Float? in
        // transform value from String? to Int?
        return Float(value!)
    }, toJSON: { (value: Float?) -> String? in
        // transform value from Int? to String?
        if let value = value {
            return String(value)
        }
        return nil
    })

    required init?(map: Map) {

    }

    func mapping(map: Map) {
        street      <- map["street"]
        suite  <- map["suite"]
        city       <- map["city"]
        zipcode        <- map["zipcode"]
        lat        <- (map["geo.lat"], transform)
        lng        <- (map["geo.lng"], transform)
        asd        <- map["asd"]
    }

}
