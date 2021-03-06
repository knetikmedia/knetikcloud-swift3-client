//
// PriceOverridable.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class PriceOverridable: Behavior {

    /** The maximum price allowed */
    public var maxPrice: Double?
    /** The minimum price allowed */
    public var minPrice: Double?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["max_price"] = self.maxPrice
        nillableDictionary["min_price"] = self.minPrice

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
