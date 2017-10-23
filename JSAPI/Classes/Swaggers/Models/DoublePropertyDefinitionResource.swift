//
// DoublePropertyDefinitionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class DoublePropertyDefinitionResource: PropertyDefinitionResource {

    /** If provided, the maximum value */
    public var max: Double?
    /** If provided, the minimum value */
    public var min: Double?

    

    // MARK: JSONEncodable
    override open func encodeToJSON() -> Any {
        var nillableDictionary = super.encodeToJSON() as? [String:Any?] ?? [String:Any?]()
        nillableDictionary["max"] = self.max
        nillableDictionary["min"] = self.min

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
