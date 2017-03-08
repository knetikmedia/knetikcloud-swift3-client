//
// SampleCountriesResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class SampleCountriesResponse: JSONEncodable {
    public var vendorId1: [Country]?
    public var vendorId2: [Country]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["vendor_id1"] = self.vendorId1?.encodeToJSON()
        nillableDictionary["vendor_id2"] = self.vendorId2?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}