//
// DatePropertyDefinitionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class DatePropertyDefinitionResource: PropertyDefinitionResource {
    /** If provided, the maximum value */
    public var max: Int64?
    /** If provided, the minimum value */
    public var min: Int64?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["max"] = self.max?.encodeToJSON()
        nillableDictionary["min"] = self.min?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
