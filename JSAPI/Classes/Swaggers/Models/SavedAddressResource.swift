//
// SavedAddressResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class SavedAddressResource: JSONEncodable {

    /** The first line of the address */
    public var address1: String?
    /** A second line of the address */
    public var address2: String?
    /** The city */
    public var city: String?
    /** The iso3 code for the country */
    public var countryCode: String?
    public var _default: Bool?
    /** The first name of the user */
    public var firstName: String?
    /** The id of the address */
    public var id: Int32?
    /** The last name of the user */
    public var lastName: String?
    /** The name of the address */
    public var name: String?
    /** The first phone number of the user */
    public var phone1: String?
    /** The second phone number of the user */
    public var phone2: String?
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
        nillableDictionary["default"] = self._default
        nillableDictionary["first_name"] = self.firstName
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["last_name"] = self.lastName
        nillableDictionary["name"] = self.name
        nillableDictionary["phone1"] = self.phone1
        nillableDictionary["phone2"] = self.phone2
        nillableDictionary["postal_code"] = self.postalCode
        nillableDictionary["state_code"] = self.stateCode

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
