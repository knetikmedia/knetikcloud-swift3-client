//
// TextProperty.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class TextProperty: Property {

    /** The value */
    public var value: String?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["value"] = self.value

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}