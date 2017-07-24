//
// PriceOverridable.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class PriceOverridable: Behavior {

    /** The maximum price allowed */
    public var maxPrice: Int32?
    /** The minimum price allowed */
    public var minPrice: Int32?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["max_price"] = self.maxPrice?.encodeToJSON()
        nillableDictionary["min_price"] = self.minPrice?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}