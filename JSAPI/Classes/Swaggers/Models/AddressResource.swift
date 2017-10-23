//
// AddressResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class AddressResource: JSONEncodable {

    /** The first line of the address */
    public var address1: String?
    /** A second line of the address */
    public var address2: String?
    /** The city */
    public var city: String?
    /** The iso3 code for the country */
    public var countryCode: String?
    /** The postal code */
    public var postalCode: String?
    /** The code for the state. Required if the country has states/provinces/equivalent */
    public var stateCode: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["address1"] = self.address1
        nillableDictionary["address2"] = self.address2
        nillableDictionary["city"] = self.city
        nillableDictionary["country_code"] = self.countryCode
        nillableDictionary["postal_code"] = self.postalCode
        nillableDictionary["state_code"] = self.stateCode

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
