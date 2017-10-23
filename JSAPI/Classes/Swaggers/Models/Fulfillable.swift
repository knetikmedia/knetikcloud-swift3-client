//
// Fulfillable.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Fulfillable: Behavior {

    /** The name of the fulfillment type that describes how the item should be fulfilled.  Examples: inventory, wallet, amazon */
    public var typeName: String?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["type_name"] = self.typeName

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
